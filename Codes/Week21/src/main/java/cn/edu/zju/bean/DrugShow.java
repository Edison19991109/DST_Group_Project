package cn.edu.zju.bean;

import org.springframework.context.annotation.Bean;

@Bean
public class DrugShow {
    private String generic_names;
    private String trade_names;
    private String brand_mixtures;
    private String type;
    private String SMILES;
    private String InChI;

    public DrugShow(String generic_names, String trade_names, String brand_mixtures, String type, String SMILES, String inChI) {
        this.generic_names = generic_names;
        this.trade_names = trade_names;
        this.brand_mixtures = brand_mixtures;
        this.type = type;
        this.SMILES = SMILES;
        InChI = inChI;
    }

    public String getGeneric_names() {
        return generic_names;
    }

    public void setGeneric_names(String generic_names) {
        this.generic_names = generic_names;
    }

    public String getTrade_names() {
        return trade_names;
    }

    public void setTrade_names(String trade_names) {
        this.trade_names = trade_names;
    }

    public String getBrand_mixtures() {
        return brand_mixtures;
    }

    public void setBrand_mixtures(String brand_mixtures) {
        this.brand_mixtures = brand_mixtures;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSMILES() {
        return SMILES;
    }

    public void setSMILES(String SMILES) {
        this.SMILES = SMILES;
    }

    public String getInChI() {
        return InChI;
    }

    public void setInChI(String inChI) {
        InChI = inChI;
    }
}