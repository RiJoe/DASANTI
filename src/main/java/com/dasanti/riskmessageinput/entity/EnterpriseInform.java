package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EnterpriseInform {
    private Integer id;
    private Integer companyType;
    private String companyName;
    private String principal;
    private String address;
    private String informant;
    private String lng;
    private String lat;
    private String informantNumber;
    private Integer totalNumber;
    private String measure;
    private Integer riskValue;
    private String majorDanger;
    private String majorRiskName;

}
