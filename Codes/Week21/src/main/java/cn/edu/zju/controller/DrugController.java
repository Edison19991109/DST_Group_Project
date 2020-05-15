package cn.edu.zju.controller;

import cn.edu.zju.bean.Drug;
import cn.edu.zju.dao.DrugDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class DrugController {

    @RequestMapping("/drugs")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("drugs");
        DrugDao drugDao = new DrugDao();
        List<Drug> all = drugDao.findAll();
        mav.addObject("drugs", all);
        return mav;
    }
}
