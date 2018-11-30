package com.etoak.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


import com.etoak.bean.Emp;


@Repository
public interface EmpMapper {
	//添加员工
	public int add(Emp emp);
	//根据编号查重
	public Emp getEno(@Param("eno")String eno);
	//查询员工信息
	public List<Emp> query(Emp emp);
	//更改密码
	public int updatePwd(@Param("id")Integer id,@Param("newPwd")String newPwd);
	//通过主键更新用户
	public int update(Emp emp);
	//通过主键来查找信息
	public Emp findEmpById(@Param("id")Integer id);
	//通过ID删除
	public int remove(@Param("ids") List<Integer> ids);
}
