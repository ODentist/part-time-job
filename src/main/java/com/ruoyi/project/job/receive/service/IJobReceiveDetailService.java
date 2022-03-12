package com.ruoyi.project.job.receive.service;

import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.vo.DeliveryVO;

import java.util.List;

/**
 * 职位接受记录Service接口
 * 
 * @author 。
 * @date 2020-02-05
 */
public interface IJobReceiveDetailService 
{
    /**
     * 查询职位接受记录
     * 
     * @param receiveId 职位接受记录ID
     * @return 职位接受记录
     */
    public JobReceiveDetail selectJobReceiveDetailById(Long receiveId);

    public DeliveryVO selectJobDelivery(Long positionId);
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
     * 批量删除职位接受记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobReceiveDetailByIds(String ids);

    /**
     * 删除职位接受记录信息
     * 
     * @param receiveId 职位接受记录ID
     * @return 结果
     */
    public int deleteJobReceiveDetailById(Long receiveId);


    public int changeStatusById(JobReceiveDetail jobReceiveDetail);
}
