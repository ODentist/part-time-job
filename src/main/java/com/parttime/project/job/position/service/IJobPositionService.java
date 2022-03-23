package com.parttime.project.job.position.service;

import com.parttime.project.job.position.domain.JobPosition;
import com.parttime.project.job.position.vo.DeliveryDetailVO;
import com.parttime.project.job.position.vo.OperationVO;
import com.parttime.project.system.dashboard.domain.IndustryDto;
import com.parttime.project.system.dashboard.domain.PositionDto;

import java.util.List;

/**
 * 职位Service接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface IJobPositionService 
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
     * 批量删除职位
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobPositionByIds(String ids);

    /**
     * 删除职位信息
     * 
     * @param positionId 职位ID
     * @return 结果
     */
    public int deleteJobPositionById(Long positionId);

    /**
     * 发布职位信息
     * @param positionId
     * @param status
     * @return
     */
    public int enableJobPositionById(Long positionId, Integer status);


    public List<DeliveryDetailVO> selectJobPositionResumeList(DeliveryDetailVO deliveryDetailVO);

    /**
     * 查看简历处理情况
     * @param receiveId
     * @param resumeId
     * @return
     */
    public OperationVO selectOperating(Long receiveId, Long resumeId);

    /**
     * 查询职位对应数量
     */
    public List<IndustryDto> selectPositionAndCounts();

    /**
     * 查询职位对应的薪水
     * @return
     */
    public List<PositionDto> selectPositionSalary();
}
