package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.InsertTable;
import com.dasanti.riskmessageinput.entity.InsertTableDetails;

import java.util.List;

public interface InsertTableService {
    Integer insertTableNameService(InsertTable insertTable);

    void insertTableDetails(InsertTableDetails insertTableDetails);

    List<InsertTableDetails> getInsertTableDetailsById(Integer tableId);
}
