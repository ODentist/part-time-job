package com.ruoyi.project.pay.event;

import com.ruoyi.project.job.vip.domain.JobVipDetail;
import com.ruoyi.project.job.vip.mapper.JobVipDetailMapper;
import com.ruoyi.project.pay.common.model.Product;
import com.ruoyi.project.pay.event.LevelEnum.LevelEnum;
import com.ruoyi.project.pay.weixinpay.domain.WeixinOrder;
import com.ruoyi.project.pay.weixinpay.service.IWeixinOrderService;
import com.ruoyi.project.system.dict.domain.DictData;
import com.ruoyi.project.system.dict.mapper.DictDataMapper;
import com.ruoyi.project.system.user.domain.User;
import com.ruoyi.project.system.user.service.IUserService;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
@EnableAsync
public class WeixinListener {

    @Autowired
    private IWeixinOrderService weixinOrderService;
    @Autowired
    private DictDataMapper dictDataMapper;
    @Autowired
    private JobVipDetailMapper jobVipDetailMapper;
    @Autowired
    private IUserService userService;

    @EventListener
    @Async
    public void updatePayOrderListener(WeixinEvent weixinEvent) {
        if ("SUCCESS".equals(weixinEvent.getStatus())) {
            WeixinOrder weixinOrder = weixinOrderService.selectWeixinOrderById(weixinEvent.getOrderNo());
            weixinOrder.setStatus("SUCCESS");
            weixinOrderService.updateWeixinOrder(weixinOrder);
            List<DictData> dictDataList = dictDataMapper.selectDictDataByType("job_vip_level");
            DictData dictData = dictDataList.stream().filter(s -> s.getDictValue().equals(weixinEvent.getTotalFee())).findFirst().get();
            Integer days = LevelEnum.get(dictData.getDictSort().intValue()).getDays();
            JobVipDetail jobVipDetail = jobVipDetailMapper.selectJobVipDetailById(weixinOrder.getUserId());
            if (jobVipDetail == null) {
                jobVipDetail = new JobVipDetail();
                jobVipDetail.setUserId(weixinOrder.getUserId());
                jobVipDetail.setOpenTime(new Date());
                jobVipDetail.setStartTime(new Date());
                jobVipDetail.setEndTime(DateUtils.addDays(new Date(), days));
                jobVipDetailMapper.insertJobVipDetail(jobVipDetail);
            } else {

                jobVipDetail.setStartTime(new Date());
                jobVipDetail.setEndTime(DateUtils.addDays(new Date(), days));
                jobVipDetailMapper.updateJobVipDetail(jobVipDetail);
            }

            User user = new User();
            user.setUserId(weixinOrder.getUserId());
            user.setVip("1");
            userService.updateUserInfo(user);

        }
    }

    @EventListener
    @Async
    public void addPayOrderListener(Product product) {
        weixinOrderService.insertWeixinOrder(product);
    }
}
