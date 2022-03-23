package com.parttime.project.job.position.controller;

import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.framework.web.page.TableDataInfo;
import com.parttime.project.job.enterprise.domain.JobEnterprise;
import com.parttime.project.job.enterprise.service.IJobEnterpriseService;
import com.parttime.project.job.position.domain.JobPosition;
import com.parttime.project.job.position.service.IJobPositionService;
import com.parttime.project.system.dict.service.IDictDataService;
import com.parttime.project.system.role.mapper.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 职位Controller
 *
 * @author .
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/positionCenter")
public class JobPositionCenterController extends BaseController {
    private String prefix = "job/position";

    @Autowired
    private IJobPositionService jobPositionService;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private IJobEnterpriseService jobEnterpriseService;
    @Autowired
    private IDictDataService dictDataService;

    @GetMapping()
    public String position()
    {
        return prefix + "/position_center";
    }

    /**
     * 查询职位投递情况列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobPosition jobPosition)
    {
        startPage();
        jobPosition.setUserId(ShiroUtils.getUserId());
        // 发布的职位
        jobPosition.setStatus(1);
        List<JobPosition> list = jobPositionService.selectJobPositionDeliveryList(jobPosition);
        // 查询用户是否是游客
        int count = roleMapper.selectRoleKeyCount(ShiroUtils.getUserId());
        if (count > 0) {
            list.stream().forEach(s -> s.setView(false));
        } else {
            list.stream().forEach(s -> s.setView(true));
        }
        return getDataTable(list);
    }

    /**
     * 选择简历
     */
    @GetMapping("/selectResume/{userId}/{positionId}")
    public String selectUser(@PathVariable("userId") Long userId, @PathVariable("positionId") Long positionId, ModelMap mmap)
    {
        mmap.put("userId", userId);
        mmap.put("positionId", positionId);
        return prefix + "/selectResume";
    }


    /**
     * 查看企业
     */
    @GetMapping("/viewEnterpriseInfo/{enterpriseId}")
    public String viewEnterpriseInfo(@PathVariable("enterpriseId") Long enterpriseId, ModelMap mmap)
    {
        JobEnterprise jobEnterprise = jobEnterpriseService.selectJobEnterpriseById(enterpriseId);
        jobEnterprise.setScaleName(dictDataService.selectDictLabel("job_enterprise_scale", jobEnterprise.getScale().toString()));
        jobEnterprise.setCategoryName(dictDataService.selectDictLabel("job_enterprise_category", jobEnterprise.getCategory().toString()));
        mmap.put("jobEnterprise", jobEnterprise);
        return "job/enterprise/view";
    }
}
