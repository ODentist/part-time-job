package com.parttime.project.system.user.controller;

import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.framework.config.RuoYiConfig;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.project.system.menu.domain.Menu;
import com.parttime.project.system.menu.service.IMenuService;
import com.parttime.project.system.role.mapper.RoleMapper;
import com.parttime.project.system.user.domain.User;
import com.parttime.project.system.user.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * 首页 业务处理
 * 
 * @author parttime
 */
@Controller
public class IndexController extends BaseController
{
    @Autowired
    private IMenuService menuService;

    @Autowired
    private IUserService userService;

    @Autowired
    private RuoYiConfig ruoYiConfig;

    @Autowired
    private RoleMapper roleMapper;

    // 系统首页
    @GetMapping("/index")
    public String index(String tourist, ModelMap mmap) {

        // 取身份信息
        User user = userService.selectUserById(ShiroUtils.getUserId());
        ShiroUtils.setSysUser(user);
        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("tourist", tourist);
        List<String> roleKeyList = roleMapper.selectRoleKey(ShiroUtils.getUserId());
        if (roleKeyList.contains("job_wanted")) {
            if ("0".equals(user.getVip())) {
                mmap.put("job_wanted", "job_wanted");
            }
        }
        mmap.put("demoEnabled", ruoYiConfig.isDemoEnabled());

        return "index";
    }

    // 切换主题
    @GetMapping("/system/switchSkin")
    public String switchSkin(ModelMap mmap)
    {
        return "skin";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap)
    {
        mmap.put("version", ruoYiConfig.getVersion());
        return "main";
    }

//    @GetMapping("/dashboard")
//    public String dashboard(){
//        return "dashboard";
//    }
}
