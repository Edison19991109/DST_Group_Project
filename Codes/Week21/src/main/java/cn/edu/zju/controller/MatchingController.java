package cn.edu.zju.controller;

import cn.edu.zju.bean.DosingGuideline;
import cn.edu.zju.bean.Drug;
import cn.edu.zju.bean.DrugLabel;
import cn.edu.zju.bean.DrugLabelShow;
import cn.edu.zju.dao.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MatchingController {
    private static final Logger log = LoggerFactory.getLogger(MatchingController.class);

    @Autowired
    private DosingGuidelineDao dosingGuidelineDao;
    @Autowired
    private DrugLabelDao drugLabelDao;
    @Autowired
    private SampleDao sampleDao;
    @Autowired
    private DrugDao drugDao;
    @Autowired
    private AnnovarDao annovarDao;

    @RequestMapping(path = "/match")

    public ModelAndView matchingIndex() {
        ModelAndView a1 = new ModelAndView();
        a1.setViewName("matching_index");
        return a1;
    }


    @RequestMapping(path = "/matching")
    public ModelAndView matching(@RequestParam("sampleId") String sampleIdParameter) {

        List<DrugLabel> matchedDrugLabel = null;
        List<DosingGuideline> matchedGuidelines = null;
        log.info("matching");

        log.info(sampleIdParameter + "=sampleparameter");

        if (sampleIdParameter == null) {
            log.info("sample id is null");
            ModelAndView q = new ModelAndView();
            q.setViewName("samples");
            return q;
        }
        Integer sampleId = null;
        try {
            sampleId = Integer.valueOf(sampleIdParameter);
        } catch (NumberFormatException e) {
            log.error("trans failed,sampleIdParameter:{}",sampleIdParameter);
            log.error("e:",e);
            ModelAndView q = new ModelAndView();
            q.setViewName("samples");
            return q;
        }

        List<String> refGenes = annovarDao.getRefGenes(sampleId);
        if (refGenes.isEmpty()) {
            ModelAndView q = new ModelAndView();
            q.setViewName("samples");
            return q;
        }
        List<DrugLabelShow> drugLabels = drugLabelDao.findAll();
        List<DrugLabelShow> matched = doMatch(refGenes, drugLabels);

        ModelAndView q = new ModelAndView();
        q.addObject("matched", matched);
        q.addObject("sample", sampleDao.findById(sampleId));
        q.setViewName("match");

        return q;

    }

    private List<DrugLabelShow> doMatch(List<String> refGenes, List<DrugLabelShow> drugLabels) {
        List<DrugLabelShow> matchedLabels = new ArrayList<>();
        for (DrugLabelShow drugLabel : drugLabels) {
            boolean matched = false;
            for (String gene : refGenes) {
                if (drugLabel.getSummary_markdown().contains(gene)) {
                    matched = true;
                }
            }
            if (matched) {
                matchedLabels.add(drugLabel);
            }
        }
        return matchedLabels;
    }

}