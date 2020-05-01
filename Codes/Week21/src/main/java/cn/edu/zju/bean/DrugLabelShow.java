package cn.edu.zju.bean;

public class DrugLabelShow {
    private String drug_name;
    private String name;
    private String source;
    private String biomarker_flag;
    private String testing_level;
    private boolean has_alternate_drug;
    private boolean has_dosing;
    private String prescribing_markdown;
    private String cancer_genome;
    private String text_markdown;
    private String summary_markdown;

    public DrugLabelShow(String drug_name, String name, String source, String biomarker_flag, String testing_level, boolean has_alternate_drug, boolean has_dosing, String prescribing_markdown, String cancer_genome, String text_markdown, String summary_markdown) {
        this.drug_name = drug_name;
        this.name = name;
        this.source = source;
        this.biomarker_flag = biomarker_flag;
        this.testing_level = testing_level;
        this.has_alternate_drug = has_alternate_drug;
        this.has_dosing = has_dosing;
        this.prescribing_markdown = prescribing_markdown;
        this.cancer_genome = cancer_genome;
        this.text_markdown = text_markdown;
        this.summary_markdown = summary_markdown;
    }

    public String getDrug_name() {
        return drug_name;
    }

    public void setDrug_name(String drug_name) {
        this.drug_name = drug_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getBiomarker_flag() {
        return biomarker_flag;
    }

    public void setBiomarker_flag(String biomarker_flag) {
        this.biomarker_flag = biomarker_flag;
    }

    public String getTesting_level() {
        return testing_level;
    }

    public void setTesting_level(String testing_level) {
        this.testing_level = testing_level;
    }

    public boolean isHas_alternate_drug() {
        return has_alternate_drug;
    }

    public void setHas_alternate_drug(boolean has_alternate_drug) {
        this.has_alternate_drug = has_alternate_drug;
    }

    public boolean isHas_dosing() {
        return has_dosing;
    }

    public void setHas_dosing(boolean has_dosing) {
        this.has_dosing = has_dosing;
    }

    public String getPrescribing_markdown() {
        return prescribing_markdown;
    }

    public void setPrescribing_markdown(String prescribing_markdown) {
        this.prescribing_markdown = prescribing_markdown;
    }

    public String getCancer_genome() {
        return cancer_genome;
    }

    public void setCancer_genome(String cancer_genome) {
        this.cancer_genome = cancer_genome;
    }

    public String getText_markdown() {
        return text_markdown;
    }

    public void setText_markdown(String text_markdown) {
        this.text_markdown = text_markdown;
    }

    public String getSummary_markdown() {
        return summary_markdown;
    }

    public void setSummary_markdown(String summary_markdown) {
        this.summary_markdown = summary_markdown;
    }
}