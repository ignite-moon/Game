package com.ssm.dao;

import com.ssm.pojo.Material;
import com.ssm.pojo.Strategy;

import java.util.List;

public interface StrategyMapper {

    public List<Strategy> selectAll();

    public int insert(Strategy strategy);

    public int deleteByName(String name);

    public int updateByName(Strategy strategy);
}
