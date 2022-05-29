package com.ssm.service;

import com.ssm.pojo.Version;

import java.util.List;

public interface VersionService {

    public List<Version> selectAll();

    public int insert(Version version);

    public int deleteByEdition(String edition);

    public int updateByEdition(Version version);
}
