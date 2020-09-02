package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TableDetailsVO {
    private Integer tableId;
    private String tableName;
    private Integer categoryRow;
    private Integer categoryId;
    private Integer influenceRow;
    private String influenceFactor;
    private String determineFactor;
    private Integer score;
    private String check;
    private String photo;

}
