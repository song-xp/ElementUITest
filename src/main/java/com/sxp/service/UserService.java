package com.sxp.service;

import com.sxp.pojo.User;

import java.util.List;

public interface UserService {
    public List<User> findAll();

    public int save(User user);

    public int delete(Integer id);

    public int update(User user);
}
