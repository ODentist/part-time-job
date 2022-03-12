package com.ruoyi.project.job.receive.service.impl;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.job.apply.domain.JobApplyDetail;
import com.ruoyi.project.job.apply.mapper.JobApplyDetailMapper;
import com.ruoyi.project.job.receive.vo.DeliveryVO;
import com.ruoyi.project.system.dict.mapper.DictDataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.job.receive.mapper.JobReceiveDetailMapper;
import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.service.IJobReceiveDetailService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 职位接受记录Service业务层处理
 * 
 * @author 。
 * @date 2020-02-05
 */
@Service
public class JobReceiveDetailServiceImpl implements IJobReceiveDetailService 
{
    @Autowired
    private JobReceiveDetailMapper jobReceiveDetailMapper;
    @Autowired
    private JobApplyDetailMapper jobApplyDetailMapper;
    @Autowired
    private DictDataMapper dictDataMapper;

    /**
     * 查询职位接受记录
     * 
     * @param receiveId 职位接受记录ID
     * @return 职位接受记录
     */
    @Override
    public JobReceiveDetail selectJobReceiveDetailById(Long receiveId)
    {
        return jobReceiveDetailMapper.selectJobReceiveDetailById(receiveId);
    }

    @Override
    public DeliveryVO selectJobDelivery(Long positionId) {
        JobApplyDetail jobApplyDetail = jobApplyDetailMapper.selectJobApplyDetail(positionId, ShiroUtils.getUserId());
        DeliveryVO deliveryVO = jobReceiveDetailMapper.selectJobDelivery(jobApplyDetail.getApplyId());
        // 未处理不显示结果和理由
        if ("0".equals(deliveryVO.getOperateStatus())) {
            deliveryVO.setHiddenResult(true);
            deliveryVO.setHiddenReason(true);
        }
        deliveryVO.setOperateStatus(dictDataMapper.selectDictLabel("job_operate_status", deliveryVO.getOperateStatus()));
        if (StringUtils.isNotEmpty(deliveryVO.getOperateResult())) {
            // 处理结果同意时显示处理结果不显示理由
            if ("0".equals(deliveryVO.getOperateResult())) {
                deliveryVO.setHiddenResult(false);
                deliveryVO.setHiddenReason(true);
            } else {
                // 处理结果不同意时显示处理结果和理由
                deliveryVO.setHiddenResult(false);
                deliveryVO.setHiddenReason(false);
            }
            deliveryVO.setOperateResult(dictDataMapper.selectDictLabel("job_operate_result", deliveryVO.getOperateResult()));
        }

        return deliveryVO;

    }

    /**
     * 查询职位接受记录列表
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 职位接受记录
     */
    @Override
    public List<JobReceiveDetail> selectJobReceiveDetailList(JobReceiveDetail jobReceiveDetail)
    {
        return jobReceiveDetailMapper.selectJobReceiveDetailList(jobReceiveDetail);
    }

    /**
     * 新增职位接受记录
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 结果
     */
    @Override
    public int insertJobReceiveDetail(JobReceiveDetail jobReceiveDetail)
    {
        return jobReceiveDetailMapper.insertJobReceiveDetail(jobReceiveDetail);
    }

    /**
     * 修改职位接受记录
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 结果
     */
    @Override
    public int updateJobReceiveDetail(JobReceiveDetail jobReceiveDetail)
    {
        return jobReceiveDetailMapper.updateJobReceiveDetail(jobReceiveDetail);
    }

    /**
     * 删除职位接受记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobReceiveDetailByIds(String ids)
    {
        return jobReceiveDetailMapper.deleteJobReceiveDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除职位接受记录信息
     * 
     * @param receiveId 职位接受记录ID
     * @return 结果
     */
    @Override
    public int deleteJobReceiveDetailById(Long receiveId)
    {
        return jobReceiveDetailMapper.deleteJobReceiveDetailById(receiveId);
    }

    @Override
    public int changeStatusById(JobReceiveDetail jobReceiveDetail) {
        jobReceiveDetail.setOperateStatus(1);
        jobReceiveDetail.setOperateTime(new Date());
        return jobReceiveDetailMapper.updateJobReceiveDetail(jobReceiveDetail);
    }
}
