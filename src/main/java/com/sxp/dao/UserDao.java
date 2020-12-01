package com.sxp.dao;

import com.sxp.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {
    public List<User> findAll();

    public int save(User user);

    public int delete(Integer id);

    public int update(User user);
}
