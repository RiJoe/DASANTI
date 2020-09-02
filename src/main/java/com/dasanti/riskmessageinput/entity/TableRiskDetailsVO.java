package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TableRiskDetailsVO {
    private String rMajorRisk;
    private String rLargerRisk;
    private String rGeneralRisk;
    private String rLowRisk;
    private List<TableComputerExplain> computerExplainList;
}
