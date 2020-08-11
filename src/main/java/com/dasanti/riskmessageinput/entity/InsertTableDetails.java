package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InsertTableDetails {
    private Integer tableId;
    private String tableName;
    private Integer categoryId;
    private String influenceFactor;
    private String determineFactor;
    private Integer score;
    private String photo;

}
