package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TableDetails {
    private String influenceFactor;
    private String determineFactor;
    private Integer score;
    private String photo;
}
