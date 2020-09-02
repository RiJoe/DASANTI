package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OtherInfluenceDetails {
    private Integer otherEnterpriseId;
    private String valuationCategory;
    private String majorRiskCategory;
    private Float judgeL;
    private Float judgeE;
    private Float judgeC;
    private Float judgeR;
    private String riskLevel;
}
