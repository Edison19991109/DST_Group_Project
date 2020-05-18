package cn.edu.zju.controller;

import cn.edu.zju.dao.DosingGuidelineDaoTest;
import cn.edu.zju.dao.DrugDaoTest;
import cn.edu.zju.dao.DrugLabelDaoTest;
import cn.edu.zju.dao.SampleDaoTest;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({DosingGuidelineControllerTest.class, DrugControllerTest.class, DrugLableControllerTest.class})

public class SuiteTestController {
}
