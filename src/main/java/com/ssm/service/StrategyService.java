package com.ssm.service;

import com.ssm.pojo.Strategy;

import java.util.List;

public interface StrategyService {

    public List<Strategy> selectAll();

    public int insert(Strategy strategy);

    public int deleteByName(String name);

    public int updateByName(Strategy strategy);
}
