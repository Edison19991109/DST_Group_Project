package cn.edu.zju.dao;

import cn.edu.zju.controller.DrugLableController;
import org.junit.Test;


import static org.junit.Assert.*;

public class DrugLabelDaoTest {
    DrugLabelDao drugLabelDao = new DrugLabelDao();
    @Test
    public void existsById() {
        String wrongid = "1234";
        drugLabelDao.existsById(wrongid, "drugs");

    }

    @Test
    public void findAll() {
        assertEquals(737,drugLabelDao.findAll().size());
    }
}