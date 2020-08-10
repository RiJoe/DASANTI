package com.dasanti.riskmessageinput.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InsertTableInfluenceFactor {
    private Integer id;
    private Integer tableId;
    private String tableName;
    private Integer categoryId;
    private String influenceFactor;
    //private List<InsertTableDetails> insertTableDetailsList;
}
