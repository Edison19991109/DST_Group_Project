package cn.edu.zju.dao;

import org.junit.Test;


import static org.junit.Assert.*;

public class DosingGuidelineDaoTest {
    DosingGuidelineDao dosingGuidelineDao = new DosingGuidelineDao();
    @Test
    public void existsById() {
        String wrongid = "1234";
        dosingGuidelineDao.existsById(wrongid, "dosing_guideline");

    }

    @Test
    public void findAll() {
        assertEquals(103,dosingGuidelineDao.findAll().size());
    }
}