package cn.edu.zju.bean;

import org.springframework.context.annotation.Bean;


public class DosingGuidelineShow {
    private String drug_name;
    private String name;
    private boolean recommendation;
    private String source;
    private String summaryMarkdown;

    public DosingGuidelineShow(String drug_name, String name, boolean recommendation, String source, String summaryMarkdown) {
        this.drug_name = drug_name;
        this.name = name;
        this.recommendation = recommendation;
        this.source = source;
        this.summaryMarkdown = summaryMarkdown;
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

    public boolean isRecommendation() {
        return recommendation;
    }

    public void setRecommendation(boolean recommendation) {
        this.recommendation = recommendation;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getSummaryMarkdown() {
        return summaryMarkdown;
    }

    public void setSummaryMarkdown(String summaryMarkdown) {
        this.summaryMarkdown = summaryMarkdown;
    }
}