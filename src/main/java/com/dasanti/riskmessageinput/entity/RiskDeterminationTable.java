package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RiskDeterminationTable {
    private Integer enterpriseId;
    private Integer riskValue;
    private String riskLevel;
    private String riskMeasure;
    private String levelColor;
}
