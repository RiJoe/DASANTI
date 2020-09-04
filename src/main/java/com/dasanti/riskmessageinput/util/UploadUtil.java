package com.dasanti.riskmessageinput.util;

import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileNotFoundException;

public class UploadUtil {
    public static ResultEntity<String> fileUpload(MultipartFile file){
        String oldName = file.getOriginalFilename();
        Long startTs = System.currentTimeMillis();
        // String UUID = IdUtil.randomUUID();
        String newName = startTs+oldName;
        /*
        String path = "D:/uploadFile";

        // 新建upload文件夹
        File parentPath = new File(path);*/
        String path = null;
        try {
            path = ResourceUtils.getURL("").getPath();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        /*try {
            path = new File(ResourceUtils.getURL("").getPath()).getParent();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }*/
        if (path != null){
            File parentPath = new File(path+"/uploadFile");
            System.out.println(parentPath);
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
                System.out.println(src);
            }catch (Exception e) {
                e.printStackTrace();
            }
            return ResultEntity.successWithData(src);
        }
        return null;
        }
}
