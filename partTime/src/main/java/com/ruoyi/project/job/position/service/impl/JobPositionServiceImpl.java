package com.ruoyi.project.job.position.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.bean.BeanUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.job.apply.mapper.JobApplyDetailMapper;
import com.ruoyi.project.job.position.vo.DeliveryDetailVO;
import com.ruoyi.project.job.position.vo.OperationVO;
import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.mapper.JobReceiveDetailMapper;
import com.ruoyi.project.job.resume.domain.JobResume;
import com.ruoyi.project.job.resume.mapper.JobResumeMapper;
import com.ruoyi.project.system.dict.mapper.DictDataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.job.position.mapper.JobPositionMapper;
import com.ruoyi.project.job.position.domain.JobPosition;
import com.ruoyi.project.job.position.service.IJobPositionService;
import com.ruoyi.common.utils.text.Convert;
import org.springframework.transaction.annotation.Transactional;

/**
 * 职位Service业务层处理
 * 
 * @author .
 * @date 2020-02-05
 */
@Service
public class JobPositionServiceImpl implements IJobPositionService 
{
    @Autowired
    private JobPositionMapper jobPositionMapper;
    @Autowired
    private JobResumeMapper jobResumeMapper;
    @Autowired
    private JobApplyDetailMapper jobApplyDetailMapper;
    @Autowired
    private JobReceiveDetailMapper jobReceiveDetailMapper;
    @Autowired
    private DictDataMapper dictDataMapper;

    /**
     * 查询职位
     * 
     * @param positionId 职位ID
     * @return 职位
     */
    @Override
    public JobPosition selectJobPositionById(Long positionId)
    {
        return jobPositionMapper.selectJobPositionById(positionId);
    }

    /**
     * 查询职位列表
     * 
     * @param jobPosition 职位
     * @return 职位
     */
    @Override
    public List<JobPosition> selectJobPositionList(JobPosition jobPosition)
    {
        return jobPositionMapper.selectJobPositionList(jobPosition);
    }


    /**
     * 查询职位投递列表
     *
     * @param jobPosition 职位
     * @return 职位
     */
    @Override
    public List<JobPosition> selectJobPositionDeliveryList(JobPosition jobPosition)
    {
        return jobPositionMapper.selectJobPositionDeliveryList(jobPosition);
    }
    /**
     * 新增职位
     * 
     * @param jobPosition 职位
     * @return 结果
     */
    @Override
    public int insertJobPosition(JobPosition jobPosition)
    {
        jobPosition.setUserId(ShiroUtils.getUserId());
        jobPosition.setCreateTime(DateUtils.getNowDate());
        return jobPositionMapper.insertJobPosition(jobPosition);
    }

    /**
     * 修改职位
     * 
     * @param jobPosition 职位
     * @return 结果
     */
    @Override
    public int updateJobPosition(JobPosition jobPosition)
    {
        jobPosition.setUpdateTime(DateUtils.getNowDate());
        return jobPositionMapper.updateJobPosition(jobPosition);
    }

    /**
     * 删除职位对象,并删除该职位下的所有投递信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public int deleteJobPositionByIds(String ids)
    {
        jobApplyDetailMapper.deleteJobApplyDetailByPositionIds(Convert.toStrArray(ids));
        jobReceiveDetailMapper.deleteJobReceiveDetailByPositionIds(Convert.toStrArray(ids));
        return jobPositionMapper.deleteJobPositionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除职位信息
     * 
     * @param positionId 职位ID
     * @return 结果
     */
    @Override
    public int deleteJobPositionById(Long positionId)
    {
        return jobPositionMapper.deleteJobPositionById(positionId);
    }

    /**
     * 发布职位
     * @param positionId
     * @param status
     * @return
     */
    @Override
    public int enableJobPositionById(Long positionId, Integer status) {
        JobPosition jobPosition = new JobPosition();
        jobPosition.setPositionId(positionId);
        jobPosition.setStatus(status);
        return jobPositionMapper.updateJobPosition(jobPosition);
    }

    @Override
    public List<DeliveryDetailVO> selectJobPositionResumeList(DeliveryDetailVO deliveryDetailVO) {
        return jobPositionMapper.selectJobPositionResumeList(deliveryDetailVO);
    }

    @Override
    public OperationVO selectOperating(Long receiveId, Long resumeId) {
        JobResume jobResume = jobResumeMapper.selectJobResumeById(resumeId);
        OperationVO operationVO = new OperationVO();
        BeanUtils.copyBeanProp(operationVO, jobResume);
        // 职位类别名称
        operationVO.setPositionType(dictDataMapper.selectDictLabel("job_position_type", jobResume.getPositionType().toString()));
        operationVO.setArea(dictDataMapper.selectDictLabel("job_area", jobResume.getArea()));
        operationVO.setSalary(dictDataMapper.selectDictLabel("job_salary", jobResume.getSalary().toString()));

        return operationVO;
    }
}
