package com.parttime.project.job.apply.mapper;

import com.parttime.project.job.apply.domain.JobApplyDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 职位申请记录Mapper接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface JobApplyDetailMapper 
{
    /**
     * 查询职位申请记录
     * 
     * @param applyId 职位申请记录ID
     * @return 职位申请记录
     */
    public JobApplyDetail selectJobApplyDetailById(Long applyId);

    /**
     * 查询职位申请记录
     *
     * @param positionId 职位ID
     *
     * @return 职位申请记录
     */
    public JobApplyDetail selectJobApplyDetail(@Param("positionId") Long positionId,@Param("userId")  Long userId);

    /**
     * 查询职位申请记录列表
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 职位申请记录集合
     */
    public List<JobApplyDetail> selectJobApplyDetailList(JobApplyDetail jobApplyDetail);

    /**
     * 新增职位申请记录
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 结果
     */
    public int insertJobApplyDetail(JobApplyDetail jobApplyDetail);

    /**
     * 修改职位申请记录
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 结果
     */
    public int updateJobApplyDetail(JobApplyDetail jobApplyDetail);

    /**
     * 删除职位申请记录
     * 
     * @param applyId 职位申请记录ID
     * @return 结果
     */
    public int deleteJobApplyDetailById(Long applyId);

    /**
     * 批量删除职位申请记录
     * 
     * @param applyIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobApplyDetailByIds(String[] applyIds);

    /**
     * 根据职位id批量删除职位申请记录
     *
     * @param positionIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobApplyDetailByPositionIds(String[] positionIds);

    /**
     * 查询一天投递的次数
     * @param userId
     * @return
     */
    public int selectCountByDay(@Param("userId") Long userId);
}
