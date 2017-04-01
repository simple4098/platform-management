package com.xiaoyu.biz.support.page;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

/**
 * <p> 分页对象 </p>
 * @author : simple
 * @data : 2017/3/27 0027
 * @version: v1.0.0
 */
public class PagePlatformRequest  {
    private Integer page;
    private Integer limit;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public  Pageable page() {
        if (page==null || limit==null){
            throw new RuntimeException("page or limit not null");
        }
        Sort sort = new Sort(Sort.Direction.DESC, "createdTime");
        return new PageRequest(page-1, limit,sort);
    }
}
