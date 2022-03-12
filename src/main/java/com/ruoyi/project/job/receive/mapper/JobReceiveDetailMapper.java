package com.ruoyi.project.job.receive.mapper;

import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.vo.DeliveryVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 职位接受记录Mapper接口
 * 
 * @author 。
 * @date 2020-02-05
 */
public interface JobReceiveDetailMapper 
{
    /**
     * 查询职位接受记录
     * 
     * @param receiveId 职位接受记录ID
     * @return 职位接受记录
     */
    public JobReceiveDetail selectJobReceiveDetailById(Long receiveId);

    /**
     * 查询职位申请进度
     *
     * @param applyId 申请id
     * @return 职位接受记录
     */
    public DeliveryVO selectJobDelivery(@Param("applyId") Long applyId);

    /**
     * 查询职位接受记录列表
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 职位接受记录集合
     */
    public List<JobReceiveDetail> selectJobReceiveDetailList(JobReceiveDetail jobReceiveDetail);

    /**
     * 新增职位接受记录
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 结果
     */
    public int insertJobReceiveDetail(JobReceiveDetail jobReceiveDetail);

    /**
     * 修改职位接受记录
     * 
     * @param jobReceiveDetail 职位接受记录
     * @return 结果
     */
    public int updateJobReceiveDetail(JobReceiveDetail jobReceiveDetail);

    /**
     * 删除职位接受记录
     * 
     * @param receiveId 职位接受记录ID
     * @return 结果
     */
    public int deleteJobReceiveDetailById(Long receiveId);

    /**
     * 批量删除职位接受记录
     * 
     * @param receiveIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobReceiveDetailByIds(String[] receiveIds);

    public int deleteJobReceiveDetailByPositionIds(String[] positionIds);
}
