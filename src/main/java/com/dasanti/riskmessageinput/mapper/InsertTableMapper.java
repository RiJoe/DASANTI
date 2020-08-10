package com.dasanti.riskmessageinput.mapper;

import com.dasanti.riskmessageinput.entity.InsertTable;
import com.dasanti.riskmessageinput.entity.InsertTableDetails;
import com.dasanti.riskmessageinput.entity.InsertTableDetailsVO;
import com.dasanti.riskmessageinput.entity.InsertTableInfluenceFactor;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InsertTableMapper {
    Integer insertTableName(InsertTable insertTable);

    void insertTableDetails(InsertTableDetails insertTableDetails);

    List<InsertTableDetailsVO> getInsertTableDetailsById(Integer tableId);

    void insertTableForInfluence(InsertTableInfluenceFactor insertTableInfluenceFactor);

    List<InsertTable> getAllFormWork();
}
