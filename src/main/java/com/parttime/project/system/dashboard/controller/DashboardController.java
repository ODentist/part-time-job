package com.parttime.project.system.dashboard.controller;

import com.parttime.project.job.enterprise.service.impl.JobEnterpriseServiceImpl;
import com.parttime.project.job.position.service.impl.JobPositionServiceImpl;
import com.parttime.project.system.dashboard.domain.DashboardDto;
import com.parttime.project.system.dashboard.domain.PositionDto;
import com.parttime.project.system.user.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;


/**
 * 数据大屏ajax请求数据
 */
@Controller
public class DashboardController {

    @Autowired
    private JobEnterpriseServiceImpl jobEnterpriseService;

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private JobPositionServiceImpl jobPositionService;

    @GetMapping("/dashboard")
    public String getInformation(Model model){
        DashboardDto dashboardDto = new DashboardDto();
        //1.设置总企业数
        dashboardDto.setAllEnterpriseCounts(jobEnterpriseService.selectAllEnterpriseCounts());

        //2.设置总求职者
        dashboardDto.setAllUserCounts(userService.selectAllUserCounts());

        //3.今天/昨天企业入驻人数
        int enterpriseTodayRegister = jobEnterpriseService.todayRegister();
        int enterpriseYesterdayRegister = jobEnterpriseService.yesterdayRegister();
        if(enterpriseTodayRegister==enterpriseYesterdayRegister){
            dashboardDto.setEnterpriseGrowth(0);
        }else{
            dashboardDto.setEnterpriseGrowth((enterpriseTodayRegister-enterpriseYesterdayRegister)*100.0/enterpriseYesterdayRegister);
        }
        dashboardDto.setTodayEnterpriseCounts(enterpriseTodayRegister);
        dashboardDto.setYesterdayEnterpriseCounts(enterpriseYesterdayRegister);

        //4.今天/昨天求职者人数
        int yesterdayRegister = userService.yesterdayRegister();
        int todayRegister = userService.todayRegister();
        if(yesterdayRegister==todayRegister){
            dashboardDto.setUserGrowth(0);
        }else{
            dashboardDto.setUserGrowth((todayRegister-yesterdayRegister)*100.0/yesterdayRegister);
        }
        dashboardDto.setYesterdayUserCounts(yesterdayRegister);
        dashboardDto.setTodayUserCounts(todayRegister);

        //5.男女求职者占比
        dashboardDto.setManUser(userService.manUser());
        dashboardDto.setWomanUser(userService.womanUser());

        //6.职位6条
        dashboardDto.setIndustryList(jobPositionService.selectPositionAndCounts());

        //7.新增公司入驻20条
        dashboardDto.setEnterpriseList(jobEnterpriseService.selectEnterpriseNameAndAddress());

        //8.新增招聘信息
        List<PositionDto> position = jobPositionService.selectPositionSalary();
        for (PositionDto positionDto : position) {
            int salary = positionDto.getSalary();
            if(salary==1){
                positionDto.setSalary(1000);
            }else if(salary==2){
                positionDto.setSalary(3000);
            }else if(salary==3){
                positionDto.setSalary(7000);
            }else{
                positionDto.setSalary(10000);
            }
        }
        dashboardDto.setPositionList(position);

        model.addAttribute("dashboard",dashboardDto);
        return "dashboard";
    }
}
