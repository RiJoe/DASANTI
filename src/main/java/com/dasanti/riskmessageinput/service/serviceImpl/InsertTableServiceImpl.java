package com.dasanti.riskmessageinput.service.serviceImpl;

import com.dasanti.riskmessageinput.entity.InsertTable;
import com.dasanti.riskmessageinput.entity.InsertTableDetails;
import com.dasanti.riskmessageinput.entity.InsertTableDetailsVO;
import com.dasanti.riskmessageinput.entity.TableDetails;
import com.dasanti.riskmessageinput.mapper.InsertTableMapper;
import com.dasanti.riskmessageinput.service.InsertTableService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class InsertTableServiceImpl implements InsertTableService {
    @Resource
    private InsertTableMapper insertTableMapper;

    @Override
    public Integer insertTableNameService(InsertTable insertTable) {
        insertTableMapper.insertTableName(insertTable);
        return insertTable.getId();
    }

    @Override
    public void insertTableDetails(InsertTableDetails insertTableDetails) {
        insertTableMapper.insertTableDetails(insertTableDetails);
    }

    @Override
    public List<InsertTableDetails> getInsertTableDetailsById(Integer tableId) {
        List<TableDetails> list = new ArrayList();
        List<InsertTableDetailsVO> listVO = new ArrayList();
        List<InsertTableDetails> insertTableDetailsList = insertTableMapper.getInsertTableDetailsById(tableId);
        for (int i = 1;i<insertTableDetailsList.size();i++){
            if(!insertTableDetailsList.get(i).getInfluenceFactor().equals(insertTableDetailsList.get(i - 1).getInfluenceFactor())){
                InsertTableDetailsVO insertTableDetailsVO = new InsertTableDetailsVO();
                BeanUtils.copyProperties(insertTableDetailsList.get(i),insertTableDetailsVO);
                listVO.add(insertTableDetailsVO);
            }

        }
        for(int i=0;i<insertTableDetailsList.size();i++){
            TableDetails tableDetails = new TableDetails();
            BeanUtils.copyProperties(insertTableDetailsList.get(i),tableDetails);
            list.add(tableDetails);
        }
        /*InsertTableDetailsVO insertTableDetailsVO = new InsertTableDetailsVO();
        BeanUtils.copyProperties(insertTableDetailsList.get(0),insertTableDetailsVO);
        listVO.add(0,insertTableDetailsVO);
        for(int i=0;i<listVO.size();i++){
            for(int j=0;j<list.size();j++) {
                if (listVO.get(i).getInfluenceFactor() == list.get(j).getInfluenceFactor()){
                    listVO.get(i).getTableDetailsList().add(list.get(j));
                }
            }
        }*/

        System.out.println(listVO);
        System.out.println(list);
        //System.out.println(insertTableDetailsList);
        return insertTableDetailsList;
    }
}
