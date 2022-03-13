package com.ruoyi.project.job.position.mapper;

import com.ruoyi.project.job.position.domain.JobPosition;
import com.ruoyi.project.job.position.vo.DeliveryDetailVO;
import com.ruoyi.project.system.dashboard.domain.EnterpriseDto;
import com.ruoyi.project.system.dashboard.domain.IndustryDto;
import com.ruoyi.project.system.dashboard.domain.PositionDto;

import java.util.List;

/**
 * 职位Mapper接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface JobPositionMapper 
{
    /**
     * 查询职位
     * 
     * @param positionId 职位ID
     * @return 职位
     */
    public JobPosition selectJobPositionById(Long positionId);

    /**
     * 查询职位列表
     * 
     * @param jobPosition 职位
     * @return 职位集合
     */
    public List<JobPosition> selectJobPositionList(JobPosition jobPosition);

    /**
     * 查询职位投递情况列表
     *
     * @param jobPosition 职位
     * @return 职位集合
     */
    public List<JobPosition> selectJobPositionDeliveryList(JobPosition jobPosition);

    /**
     * 新增职位
     * 
     * @param jobPosition 职位
     * @return 结果
     */
    public int insertJobPosition(JobPosition jobPosition);

    /**
     * 修改职位
     * 
     * @param jobPosition 职位
     * @return 结果
     */
    public int updateJobPosition(JobPosition jobPosition);

    /**
     * 删除职位
     * 
     * @param positionId 职位ID
     * @return 结果
     */
    public int deleteJobPositionById(Long positionId);

    /**
     * 批量删除职位
     * 
     * @param positionIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobPositionByIds(String[] positionIds);

    public List<DeliveryDetailVO> selectJobPositionResumeList(DeliveryDetailVO deliveryDetailVO);

    /**
     * 查询职位对应的数量
     * @return
     */
    public List<IndustryDto> selectPositionAndCounts();

    /**
     * 查询职位对应的薪水
     * @return
     */
    public List<PositionDto> selectPositionSalary();
}
