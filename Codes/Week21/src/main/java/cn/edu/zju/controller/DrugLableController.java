package cn.edu.zju.controller;

import cn.edu.zju.bean.DrugLabelShow;
import cn.edu.zju.dao.DrugLabelDao;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Component
import cn.edu.zju.bean.DrugLabelShow;
import cn.edu.zju.dao.DrugLabelDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class DrugLableController {

    @RequestMapping("/drugLabels")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("drug_labels");
        DrugLabelDao drugLabelDao = new DrugLabelDao();
        List<DrugLabelShow> all = drugLabelDao.findAll();
        mav.addObject("drugLabels", all);
        return mav;
    }
}
