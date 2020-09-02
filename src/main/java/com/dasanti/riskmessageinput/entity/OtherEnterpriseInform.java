package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OtherEnterpriseInform {
    private Integer id;
    private String otherCompanyName;
    private String otherPrincipal;
    private String otherNumber;
    private String otherLng;
    private String otherLat;
}
