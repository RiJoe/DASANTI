package com.dasanti.riskmessageinput;

import cn.hutool.core.io.resource.ResourceUtil;
import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.dasanti.riskmessageinput.util.RiskLevelDetermine;
import javafx.application.Application;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.ResourceUtils;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.URL;
import java.util.List;

@SpringBootTest
class RiskMessageInputApplicationTests {
    @Resource
    private EnterpriseDetailsService enterpriseDetailsService1;
    /*@Test
    void contextLoads() {
        //List<EnterpriseInform> list = enterpriseDetailsService1.getAllEnterpriseByRiskLevel("重大风险");
        //System.out.println(list);
    }
    @Test
    void getURL(){
        String path = null;
        try {
            path = new File(ResourceUtils.getURL("").getPath()).getParent();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println(path);
    }
*/
}
