package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OtherInfluenceDetails {
    private Integer enterpriseId;
    private String valuationCategory;
    private String majorRiskCategory;
    private Integer judgeL;
    private Integer judgeE;
    private Integer judgeC;
    private Integer judgeR;
    private String riskLevel;
}
