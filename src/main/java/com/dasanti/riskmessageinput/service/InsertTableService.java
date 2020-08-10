package com.dasanti.riskmessageinput.service;

import com.dasanti.riskmessageinput.entity.InsertTable;
import com.dasanti.riskmessageinput.entity.InsertTableDetails;
import com.dasanti.riskmessageinput.entity.InsertTableDetailsVO;
import com.dasanti.riskmessageinput.entity.InsertTableInfluenceFactor;

import java.util.List;

public interface InsertTableService {
    Integer insertTableNameService(InsertTable insertTable);

    void insertTableDetails(InsertTableDetails insertTableDetails);

    List<InsertTableDetailsVO> getInsertTableDetailsById(Integer tableId);

    void insertTableForInfluence(InsertTableInfluenceFactor insertTableInfluenceFactor);

    List<InsertTable> getAllFormWork();
}
