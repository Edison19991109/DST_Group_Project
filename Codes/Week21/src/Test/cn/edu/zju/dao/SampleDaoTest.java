package cn.edu.zju.dao;
import java.util.*;

import cn.edu.zju.bean.Sample;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.Assert.*;
@Transactional(readOnly = true)
public class SampleDaoTest {
    SampleDao sampleDao = new SampleDao();
    @Test
    //ArrayList[] testempty = new ArrayList();
    public void saveAndFindall() {
        Assert.assertEquals(sampleDao.findAll().size(),0);
        sampleDao.save("testuser");
        Assert.assertEquals(sampleDao.findAll().size(),1);
        List<Sample> resaultset = sampleDao.findAll();
        for (int i = 0; i < resaultset.size(); i++) {
            System.out.println(resaultset.get(i));
        }

        // 方
    }



    @Test
    public void findById() {
    }
}