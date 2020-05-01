package cn.edu.zju.dao;

import cn.edu.zju.bean.Drug;
import cn.edu.zju.bean.DrugLabel;
import cn.edu.zju.bean.DrugLabelShow;
import cn.edu.zju.dbutils.DBUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DrugLabelDao extends BaseDao {

    private static final Logger log = LoggerFactory.getLogger(DrugLabelDao.class);

    public boolean existsById(String id) {
        return super.existsById(id, "drug_label");
    }

    public void saveDrugLabel(DrugLabel drugLabel) {
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("insert into drug_label (id,name,obj_cls,alternate_drug_available,dosing_information,prescribing_markdown,source,text_markdown,summary_markdown,raw,drug_id) values (?,?,?,?,?,?,?,?,?,?,?)");
                preparedStatement.setString(1, drugLabel.getId());
                preparedStatement.setString(2, drugLabel.getName());
                preparedStatement.setString(3, drugLabel.getObjCls());
                preparedStatement.setBoolean(4, drugLabel.isAlternateDrugAvailable());
                preparedStatement.setBoolean(5, drugLabel.isDosingInformation());
                preparedStatement.setString(6, drugLabel.getPrescribingMarkdown());
                preparedStatement.setString(7, drugLabel.getSource());
                preparedStatement.setString(8, drugLabel.getTextMarkdown());
                preparedStatement.setString(9, drugLabel.getSummaryMarkdown());
                preparedStatement.setString(10, drugLabel.getRaw());
                preparedStatement.setString(11, drugLabel.getDrugId());
                preparedStatement.execute();
            } catch (SQLException e) {
                log.info("", e);
            }
        });

    }

    public List<DrugLabelShow> findAll() {
        List<DrugLabelShow> drugLabels = new ArrayList<>();
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(
                        "select drug.name\n" +
                                "       Name,\n" +
                                "       drug_label.Source,\n" +
//                                "       `Biomarker Flag`,\n" +
//                                "       `Testing Level`,\n" +
                                "       alternate_drug_available,\n" +
                                "       dosing_information,\n" +
                                "       prescribing_markdown,\n" +
//                                "       `Cancer Genome`,\n" +
                                "        text_markdown,\n" +
                                "       summary_markdown\n" +
                                "from druglabels,drug_label,drug\n" +
                                "    where drug_label.id = `PharmGKB ID`\n" +
                                "    AND drug_id = drug.id;");
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String drug_name = resultSet.getString("drug.name");
                    String name = resultSet.getString("Name");
                    String source = resultSet.getString("drug_label.Source");
//                    String biomarker_flag = resultSet.getString("`Biomarker Flag`");
                    String biomarker_flag ="";
                    String testing_level = "";
//                    String testing_level = resultSet.getString("`Testing Level`");
                    boolean alternate_drug_available = resultSet.getBoolean("alternate_drug_available");
                    boolean dosing_information = resultSet.getBoolean("dosing_information");
                    String prescribing_markdown = resultSet.getString("prescribing_markdown");
//                    String cancer_genome = resultSet.getString("`Cancer Genome`");
                    String cancer_genome="";
                    String text_markdown = resultSet.getString("text_markdown");
                    String summary_markdown = resultSet.getString("summary_markdown");
                    DrugLabelShow drugLabel = new DrugLabelShow(drug_name, name, source,biomarker_flag,testing_level,
                            alternate_drug_available, dosing_information, prescribing_markdown, cancer_genome, text_markdown, summary_markdown);
                    drugLabels.add(drugLabel);
                }
            } catch (SQLException e) {
                log.info("", e);
            }
        });
        return drugLabels;
    }
}