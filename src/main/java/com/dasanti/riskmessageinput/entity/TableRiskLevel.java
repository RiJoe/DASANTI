package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TableRiskLevel {
    private Integer tableId;
    private String rMajorRisk;
    private String rLargerRisk;
    private String rGeneralRisk;
    private String rLowRisk;
}
