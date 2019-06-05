package com.park.dao;


import java.util.List;

import com.park.pojo.TbCar;

public interface TbCarDao {


    int deleteByPrimaryKey(Integer id);

    int insert(TbCar record);

    int insertSelective(TbCar record);

    TbCar selectByPrimaryKey(Integer id);
    List<TbCar> selectByCid(Integer cid);

    int updateByPrimaryKeySelective(TbCar record);

    int updateByPrimaryKey(TbCar record);

	boolean isExit(Integer cid);

	void updateCar(TbCar car);

	void saveCar(TbCar car);

	List<TbCar> getCidById(Integer id);

}