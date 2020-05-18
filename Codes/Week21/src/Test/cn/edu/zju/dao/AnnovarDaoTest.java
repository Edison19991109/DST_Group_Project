package cn.edu.zju.dao;

import cn.edu.zju.bean.Sample;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class AnnovarDaoTest {
    AnnovarDao annovarDao = new AnnovarDao();

    @Test
    public void saveAndGetRefgene() {
        Assert.assertEquals(AnnovarDao.getRefGenes(1).size(),0);
        String[] testann = null;
        for (int j = 1; j <= 153; j++) {
            testann[j]="testuser    ";
        }
        String testann1 = testann.toString();
//        AnnovarDao.("testuser");
        // Assert.assertEquals(sampleDao.findAll().toArray()[1],"testuser");

        annovarDao.save(1,testann1);
        Assert.assertEquals(annovarDao.getRefGenes(1),"testuser ");
    }
}