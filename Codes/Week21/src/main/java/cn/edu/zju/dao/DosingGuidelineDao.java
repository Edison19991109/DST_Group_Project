package cn.edu.zju.dao;

import cn.edu.zju.bean.DosingGuideline;
import cn.edu.zju.bean.DosingGuidelineShow;
import cn.edu.zju.bean.Drug;
import cn.edu.zju.dbutils.DBUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Component
public class DosingGuidelineDao extends BaseDao {

    private static final Logger log = LoggerFactory.getLogger(DosingGuidelineDao.class);

    public DosingGuidelineDao() {
    }

    public boolean existsById(String id) {
        return super.existsById(id, "dosing_guideline");
    }

    public void saveDosingGuideline(DosingGuideline dosingGuideline) {
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("insert into dosing_guideline (id,obj_cls,name,recommendation,drug_id,source,summary_markdown,text_markdown,raw) values (?,?,?,?,?,?,?,?,?)");
                preparedStatement.setString(1, dosingGuideline.getId());
                preparedStatement.setString(2, dosingGuideline.getObjCls());
                preparedStatement.setString(3, dosingGuideline.getName());
                preparedStatement.setBoolean(4, dosingGuideline.isRecommendation());
                preparedStatement.setString(5, dosingGuideline.getDrugId());
                preparedStatement.setString(6, dosingGuideline.getSource());
                preparedStatement.setString(7, dosingGuideline.getSummaryMarkdown());
                preparedStatement.setString(8, dosingGuideline.getTextMarkdown());
                preparedStatement.setString(9, dosingGuideline.getRaw());
                preparedStatement.execute();
            } catch (SQLException e) {
                log.info("", e);
            }
        });

    }
    public List<DosingGuidelineShow> findAll() {
        List<DosingGuidelineShow> dosingGuidelines = new ArrayList<>();
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(
                        "select drug.name,\n" +
                        "       dosing_guideline.name,\n" +
                        "       dosing_guideline.recommendation,\n" +
                        "       dosing_guideline.source,\n" +
                        "       dosing_guideline.summary_markdown\n" +
                        "from drug,dosing_guideline\n" +
                        "    where drug_id = drug.id;");
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String drug_name = resultSet.getString("drug.name");
                    String name = resultSet.getString("dosing_guideline.name");
                    boolean recommendation = resultSet.getBoolean("recommendation");
                    String source = resultSet.getString("source");
                    String summaryMarkdown = resultSet.getString("summary_markdown");
                    DosingGuidelineShow dosingGuidelineShow = new DosingGuidelineShow(drug_name, name, recommendation, source, summaryMarkdown);
                    dosingGuidelines.add(dosingGuidelineShow);
                }
            } catch (SQLException e) {
                log.info("", e);
            }
        });
        return dosingGuidelines;
    }

}