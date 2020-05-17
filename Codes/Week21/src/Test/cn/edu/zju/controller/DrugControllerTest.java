package cn.edu.zju.controller;

import cn.edu.zju.bean.DosingGuidelineShow;
import cn.edu.zju.bean.Drug;
import cn.edu.zju.bean.DrugShow;
import cn.edu.zju.dao.DosingGuidelineDao;
import cn.edu.zju.dao.DrugDao;
import org.junit.Before;
import org.junit.Test;
import static org.springframework.test.web.ModelAndViewAssert.*;
import org.springframework.web.servlet.ModelAndView;

import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/springmvc-servlet.xml")
public class DrugControllerTest {

    @Autowired
    private WebApplicationContext webAppContext;

    //  private MockMvc mockMvc;
    @Autowired
    private DrugDao drugDao;
    @Autowired
    private DrugController drugController;

    @Before
    public void setup() {



        ///  this.mockMvc = MockMvcBuilders.webAppContextSetup(webAppContext).build();
    }
    @Test
    public void handleRequest() throws Exception {
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setRequestURI("/drugs");
        MockHttpServletResponse response = new MockHttpServletResponse();
        // mockMvc.perform(get("/highest-paid/2"))
        ModelAndView mav = drugController.handleRequest(request,response);
        assertViewName(mav,"dosing_guideline");
        List<Drug> expall = drugDao.findAll();
        assertSortAndCompareListModelAttribute(mav,"drugs",expall,null);

    }
}