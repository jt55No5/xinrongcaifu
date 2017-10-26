package com.xinrong.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xinrong.bean.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    List<Users> selectAll(Users users);
    /**
     * 根据用户名验证登陆
     * @param username
     * @return
     */
    Users getLoginUser(@Param("username")String username);
}