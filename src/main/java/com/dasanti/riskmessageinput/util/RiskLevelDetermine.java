package com.dasanti.riskmessageinput.util;

import com.dasanti.riskmessageinput.entity.RiskDeterminationTable;

public class RiskLevelDetermine {
    public static RiskDeterminationTable riskLevelDetermine(Integer enterpriseId, Integer tableId, Integer riskValue) {
        RiskDeterminationTable riskDeterminationTable = new RiskDeterminationTable();
        if (tableId == 64) {
            if ( riskValue >= 1200) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                return riskDeterminationTable;
            } else if (riskValue >= 900) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                return riskDeterminationTable;
            } else if ( riskValue >= 600) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                return riskDeterminationTable;
            } else if ( riskValue >= 300) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                return riskDeterminationTable;
            }
        } else if (tableId == 65){
            if ( riskValue >= 2000) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                return riskDeterminationTable;
            } else if (riskValue>= 1500){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                return riskDeterminationTable;
            }else if ( riskValue >= 1000) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                return riskDeterminationTable;
            } else if (riskValue >= 500) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                return riskDeterminationTable;
            }
        } else if (tableId == 66){
            if ( riskValue >= 317) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                return riskDeterminationTable;
            } else if (riskValue>= 238){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                return riskDeterminationTable;
            }else if ( riskValue >= 158) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                return riskDeterminationTable;
            } else if (riskValue >= 97) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                return riskDeterminationTable;
            }
        }else {
            return null;
        }
    }
}
