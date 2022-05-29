package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Characters;
import com.ssm.service.CharactersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("characters")
public class CharactersController {
    @Autowired
    private CharactersService charactersService;

    /**
     * 返回jsp界面
     * @return
     */
    @RequestMapping("/charAdd")
    public String charAdd(){
        return "chara/charAdd";
    }

    @RequestMapping("/charUpdate")
    public String charUpdate(){
        return "chara/charUpdate";
    }
    /**
     * 事件处理
     */
    @RequestMapping("/charList")
    public ModelAndView charList(@RequestParam(value = "p",defaultValue = "1")Integer p){
        PageHelper.startPage(p,5);
        List<Characters> list = charactersService.selectAll();
        ModelAndView mv = new ModelAndView();
        //导航页码数navigatePages
        PageInfo pageInfo=new PageInfo(list,5);
        mv.addObject("allChar",pageInfo);
        mv.setViewName("chara/charList");
        return mv;
    }

    @RequestMapping("/charDelete")
    public ModelAndView charDelete(@RequestParam(value = "p",defaultValue = "1")Integer p,String name){
        charactersService.deleteByName(name);
        PageHelper.startPage(p,5);
        List<Characters> list = charactersService.selectAll();
        ModelAndView mv = new ModelAndView();
        //导航页码数navigatePages
        PageInfo pageInfo=new PageInfo(list,5);
        mv.addObject("allChar",pageInfo);
        mv.setViewName("chara/charList");
        return mv;
    }

    @RequestMapping("/char_update")
    public ModelAndView charUpdate(Characters characters){
        charactersService.updateByName(characters);
        return new ModelAndView("chara/charUpdate");
    }

    @RequestMapping("/char_add")
    public ModelAndView add(Characters characters){
        charactersService.insert(characters);
        return new ModelAndView("chara/charAdd");
    }

}
