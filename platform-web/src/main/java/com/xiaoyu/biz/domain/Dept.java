package com.xiaoyu.biz.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Entity
@Table(name = "ext_dept")
public class Dept {

    private String id;
    private String deptName;
    private String deptDesc;

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptDesc() {
        return deptDesc;
    }

    public void setDeptDesc(String deptDesc) {
        this.deptDesc = deptDesc;
    }
}
