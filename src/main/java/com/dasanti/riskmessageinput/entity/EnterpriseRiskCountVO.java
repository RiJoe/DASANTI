package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EnterpriseRiskCountVO {
    private String riskLevel;
    private Integer count;
}
