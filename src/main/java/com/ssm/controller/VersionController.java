package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Material;
import com.ssm.pojo.Version;
import com.ssm.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/ver")
public class VersionController {
    @Autowired
    private VersionService versionService;

    /**
     * 界面返回
     */
    @RequestMapping("/verAdd")
    public String verAdd(){
        return "ver/verAdd";
    }

    @RequestMapping("/verUpdate")
    public String verUpdate(){
        return "ver/verUpdate";
    }

    /**
     * 事件处理
     */

    @RequestMapping("/veradd")
    public ModelAndView add(Version version){
        versionService.insert(version);
        return new ModelAndView("ver/verAdd");
    }

    @RequestMapping("/verList")
    public ModelAndView list(@RequestParam(value = "p",defaultValue = "1")Integer p){
        PageHelper.startPage(p,5);
        List<Version> list = versionService.selectAll();
        ModelAndView mv = new ModelAndView();
        //导航页码数navigatePages
        PageInfo pageInfo=new PageInfo(list,5);
        mv.addObject("allVer",pageInfo);
        mv.setViewName("ver/verList");
        return mv;
    }

    @RequestMapping("/verupdate")
    public ModelAndView update(Version version){
        versionService.updateByEdition(version);
        return new ModelAndView("ver/verUpdate");
    }

    @RequestMapping("/verDelete")
    public ModelAndView delete(@RequestParam(value = "p",defaultValue = "1")Integer p,String edition){
        versionService.deleteByEdition(edition);
        List<Version> list = versionService.selectAll();
        ModelAndView mv = new ModelAndView();
        //导航页码数navigatePages
        PageInfo pageInfo=new PageInfo(list,5);
        mv.addObject("allVer",pageInfo);
        mv.setViewName("ver/verList");
        return mv;
    }
}
