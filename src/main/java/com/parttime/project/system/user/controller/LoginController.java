package com.parttime.project.system.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parttime.common.constant.Constants;
import com.parttime.project.system.user.domain.User;
import com.parttime.project.system.user.mapper.UserMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.parttime.common.utils.ServletUtils;
import com.parttime.common.utils.StringUtils;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.framework.web.domain.AjaxResult;

/**
 * 登录验证
 *
 * @author parttime
 */
@Controller
public class LoginController extends BaseController
{

    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request))
        {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean tourist,String  validateCode,HttpServletRequest request, HttpServletResponse response)
    {
        UsernamePasswordToken token;
        if (tourist) {
            User user = getRandSysUser();
            token = new UsernamePasswordToken(user.getLoginName(), Constants.PASSWORD);
        } else {
            if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
                return AjaxResult.error("用户名或者密码不能为空！");
            }
            token = new UsernamePasswordToken(username, password);
        }

        if (request.getSession().getAttribute("check_code").equals(validateCode)) {
            Subject subject = SecurityUtils.getSubject();
            try
            {
                subject.login(token);
                if (tourist) {
                    return AjaxResult.success("登录成功", "tourist");
                }

                return success();
            }
            catch (AuthenticationException e)
            {
                String msg = "用户或密码错误";
                if (StringUtils.isNotEmpty(e.getMessage()))
                {
                    msg = e.getMessage();
                }
                return error(msg);
            }
        } else {
            String msg = "验证码错误";
            return error(msg);
        }
    }

    @GetMapping("/unauth")
    public String unauth()
    {
        return "error/unauth";
    }

    @Autowired
    private UserMapper userMapper;

    public User getRandSysUser() {
        return userMapper.getRandUser();
    }
}
