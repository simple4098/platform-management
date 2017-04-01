package com.xiaoyu.biz.support.page;

import com.github.pagehelper.PageInfo;
import org.springframework.data.domain.Page;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author simple
 */
public class PageModel<T> implements Serializable {
    //当前页
    private int pageNumber;
    //每页的数量
    private int pageSize;
    //当前页的数量
    private int size;
    //排序
    private Iterable<Sort> sort;

    //总记录数
    private long totalRow;
    //总页数
    private int totalPage;
    //结果集
    private List<T> list;

    //是否为第一页
    private boolean firstPage = false;
    //是否为最后一页
    private boolean lastPage = false;

    public static <T> PageModel<T> from(Page<T> page){
        return new PageModel<>(page);
    }
    public static <T> PageModel<T> from(PageInfo<T> page){
        return new PageModel<>(page);
    }

    private PageModel(Page<T> page) {
        this.pageNumber = page.getNumber();
        this.pageSize = page.getNumberOfElements();
        this.size = page.getSize();
        this.list = page.getContent();
        this.totalRow = page.getTotalElements();
        this.totalPage = page.getTotalPages();
        this.firstPage = page.isFirst();
        this.lastPage = page.isLast();
        if (page.getSort() != null) {
            List<Sort> sorts = new ArrayList<>();
            page.getSort().forEach(order -> sorts.add(new Sort(order.getDirection().name(), order.getProperty())));
            this.sort = sorts;
        }
    }

    private PageModel(PageInfo<T> page) {
        this.pageNumber = page.getPageNum();
        this.pageSize = page.getPageSize();
        this.size = page.getSize();
        this.list = page.getList();
        this.totalRow = page.getTotal();
        this.totalPage = page.getPages();
        this.firstPage = page.isIsFirstPage();
        this.lastPage = page.isIsLastPage();
        if (page.getOrderBy() != null) {
            String[] orderBy = page.getOrderBy().split(",");
            List<Sort> sorts = new ArrayList<>();
            Arrays.asList(orderBy).forEach(s -> {
                String[] split = s.split(" ");
                if (split.length == 1) {
                    sorts.add(new Sort("ASC", split[0]));
                } else {
                    sorts.add(new Sort(split[1], split[0]));
                }
            });
            this.sort = sorts;
        }
    }



    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Iterable<Sort> getSort() {
        return sort;
    }

    public void setSort(Iterable<Sort> sort) {
        this.sort = sort;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    static class Sort implements Serializable {
        private final String direction;
        private final String property;

        Sort(String direction, String property) {
            this.direction = direction;
            this.property = property;
        }

        public String getDirection() {
            return direction;
        }

        public String getProperty() {
            return property;
        }
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public long getTotalRow() {
        return totalRow;
    }

    public void setTotalRow(long totalRow) {
        this.totalRow = totalRow;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public boolean isFirstPage() {
        return firstPage;
    }

    public void setFirstPage(boolean firstPage) {
        this.firstPage = firstPage;
    }

    public boolean isLastPage() {
        return lastPage;
    }

    public void setLastPage(boolean lastPage) {
        this.lastPage = lastPage;
    }
}
