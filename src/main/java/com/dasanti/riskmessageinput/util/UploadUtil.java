package com.dasanti.riskmessageinput.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;

public class UploadUtil {
    public static ResultEntity<String> fileUpload(MultipartFile file){
        String oldName = file.getOriginalFilename();
        Long startTs = System.currentTimeMillis();
        // String UUID = IdUtil.randomUUID();
        String newName = startTs+oldName;
        String path = "D:/uploadFile";

        // 新建upload文件夹
        File parentPath = new File(path);
        if(!parentPath.exists()) {
            parentPath.mkdirs();
        }
        String src = "";
        try{
            file.transferTo(new File(parentPath,newName));
            File theFile = new File(parentPath+"/"+newName);
            if (theFile.exists()){
                src="/"+newName;
            }else {
                src="";
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return ResultEntity.successWithData(src);
    }
}
