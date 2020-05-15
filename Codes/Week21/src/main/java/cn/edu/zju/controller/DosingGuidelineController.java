package cn.edu.zju.controller;

import cn.edu.zju.bean.DosingGuidelineShow;
import cn.edu.zju.dao.DosingGuidelineDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class DosingGuidelineController {

    @RequestMapping("/dosingGuideline")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("dosing_guideline");
        DosingGuidelineDao dosingGuidelineDao = new DosingGuidelineDao();
        List<DosingGuidelineShow> all = dosingGuidelineDao.findAll();
        mav.addObject("dosingGuidelines", all);
        return mav;
    }
}
