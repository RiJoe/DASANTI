package com.dasanti.riskmessageinput.util;

import com.dasanti.riskmessageinput.entity.RiskDeterminationTable;

public class RiskLevelDetermine {

    public static RiskDeterminationTable riskLevelDetermine(Integer enterpriseId, Integer tableId, Integer riskValue) {
        RiskDeterminationTable riskDeterminationTable = new RiskDeterminationTable();
        if (tableId == 64 || tableId == 77 || tableId == 96) {
            if ( riskValue >= 1200) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue >= 900) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            } else if ( riskValue >= 600) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if ( riskValue >= 300) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        } else if (tableId == 65){
            if ( riskValue >= 2000) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 1500){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 1000) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 500) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        } else if (tableId == 66){
            if ( riskValue >= 317) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 238){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 158) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 97) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 67){
            if ( riskValue >= 1632) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 1224){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 816) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 408) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 68 || tableId == 70 || tableId == 71 || tableId == 72 || tableId == 73 || tableId == 74 || tableId == 76 || tableId == 79 || tableId == 80 || tableId == 81 || tableId == 82 || tableId == 83 || tableId == 97){
            if ( riskValue >= 720) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 240){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 150) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 70) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 69){
            if ( riskValue >= 1152) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 864){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 576) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 288) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 75){
            if ( riskValue >= 864) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 648){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 432) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 216) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 78 || tableId == 93){
            if ( riskValue >= 1056) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 792){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 528) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 264) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 84){
            if ( riskValue >= 450) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 250){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 100) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        }else if (tableId == 85){
            if ( riskValue >= 720) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 380){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 250) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else if (riskValue >= 70) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("可接受");
                riskDeterminationTable.setRiskMeasure("无");
                riskDeterminationTable.setLevelColor("green");
                riskDeterminationTable.setIconUrl(Constant.RISK_NO);
                return riskDeterminationTable;
            }
        }else if (tableId == 86){
            if ( riskValue >= 720) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 320){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if ( riskValue >= 240) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        }else if (tableId == 87){
            if ( riskValue >= 720) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 340){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if (riskValue >= 250) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        }else if (tableId == 88 || tableId == 89 || tableId == 98 || tableId== 99 || tableId == 100){
            if ( riskValue >= 720) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 380){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if (riskValue >= 250) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        }else if (tableId == 90 || tableId == 91 || tableId == 95){
            if ( riskValue >= 450) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 250){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if (riskValue >= 70) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        }else if (tableId == 92 || tableId == 94){
            if ( riskValue >= 600) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("重大风险");
                riskDeterminationTable.setRiskMeasure("不可容许、停工");
                riskDeterminationTable.setLevelColor("red");
                riskDeterminationTable.setIconUrl(Constant.RISK_MAJOR);
                return riskDeterminationTable;
            } else if (riskValue>= 450){
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("较大风险");
                riskDeterminationTable.setRiskMeasure("立即整改，方案、验收");
                riskDeterminationTable.setLevelColor("orange");
                riskDeterminationTable.setIconUrl(Constant.RISK_LARGER);
                return riskDeterminationTable;
            }else if (riskValue >= 300) {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("一般风险");
                riskDeterminationTable.setRiskMeasure("需要整改，整改、检查");
                riskDeterminationTable.setLevelColor("yellow");
                riskDeterminationTable.setIconUrl(Constant.RISK_GENERAL);
                return riskDeterminationTable;
            } else {
                riskDeterminationTable.setEnterpriseId(enterpriseId);
                riskDeterminationTable.setRiskValue(riskValue);
                riskDeterminationTable.setRiskLevel("低风险");
                riskDeterminationTable.setRiskMeasure("需要注意，培训、检查");
                riskDeterminationTable.setLevelColor("blue");
                riskDeterminationTable.setIconUrl(Constant.RISK_LOW);
                return riskDeterminationTable;
            }
        } else{
            return null;
        }
    }
}
