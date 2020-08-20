package com.dasanti.riskmessageinput.entity.page;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PageResult {
    private Integer pageNum;
    private Integer pageSize;
    private Long totalSize;
    private Integer totalPages;
    private Object content;
}
