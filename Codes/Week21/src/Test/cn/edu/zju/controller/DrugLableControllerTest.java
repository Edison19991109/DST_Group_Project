package cn.edu.zju.controller;

import cn.edu.zju.bean.*;
import cn.edu.zju.dao.DosingGuidelineDao;
import cn.edu.zju.dao.DrugDao;
import cn.edu.zju.dao.DrugLabelDao;
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
public class DrugLableControllerTest {

    @Autowired
    private WebApplicationContext webAppContext;

    //  private MockMvc mockMvc;
    @Autowired
    private DrugLabelDao drugLabelDao;
    @Autowired
    private DrugLableController drugLableController;

    @Before
    public void setup() {



        ///  this.mockMvc = MockMvcBuilders.webAppContextSetup(webAppContext).build();
    }
    @Test
    public void handleRequest() throws Exception {
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setRequestURI("/drugLabels");
        MockHttpServletResponse response = new MockHttpServletResponse();
        // mockMvc.perform(get("/highest-paid/2"))
        ModelAndView mav = drugLableController.handleRequest(request,response);
        assertViewName(mav,"drug_labels");
        assertModelAttributeAvailable(mav,"drugLabels");

    }
}