package com.hbh.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Ckin;
import com.hbh.entity.CkinExample;
import com.hbh.entity.Product;


public interface ICkinService {

    int delete(String inid);

    int insert(Ckin record);


    List<Ckin> getall();

    Ckin getbyid(String inid);

    boolean update(Ckin record);
    
    List<Ckin> getbyparams(String proid,String inid,String pname,String indate );

    public List<Map<String,Object>> pieData();

}
