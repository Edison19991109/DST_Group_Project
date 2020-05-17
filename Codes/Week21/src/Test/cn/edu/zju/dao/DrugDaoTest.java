package cn.edu.zju.dao;

import org.junit.Test;


import static org.junit.Assert.*;

public class DrugDaoTest {
    DrugDao drugDao = new DrugDao();
    @Test
    public void existsById() {
        String wrongid = "1234";
        DrugDao.existsById(wrongid, "drugs");

    }

    @Test
    public void findAll() {
        assertEquals(103,drugDao.findAll().size());
    }
}