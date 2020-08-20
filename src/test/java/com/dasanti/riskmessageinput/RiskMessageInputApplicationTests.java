package com.dasanti.riskmessageinput;

import com.dasanti.riskmessageinput.entity.EnterpriseInform;
import com.dasanti.riskmessageinput.service.EnterpriseDetailsService;
import com.dasanti.riskmessageinput.util.RiskLevelDetermine;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
class RiskMessageInputApplicationTests {
    @Resource
    private EnterpriseDetailsService enterpriseDetailsService1;
    @Test
    void contextLoads() {
        //List<EnterpriseInform> list = enterpriseDetailsService1.getAllEnterpriseByRiskLevel("重大风险");
        //System.out.println(list);
    }

}
