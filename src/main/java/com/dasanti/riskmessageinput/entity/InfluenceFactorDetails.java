package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InfluenceFactorDetails {
    private Integer enterpriseId;
    private Integer categoryId;
    private String determineFactor;
    private Integer score;
    private String photo;
}
