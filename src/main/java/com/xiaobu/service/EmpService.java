package com.xiaobu.service;
import com.xiaobu.entity.Emp;
import com.xiaobu.mapper.EmpMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
 * @author  xiaobu
 * @date   on  2019/8/16 10:35
 * @version JDK1.8.0_171
 * @description 
 */
@Service
public class EmpService{

	public List<Emp> findAllByName(String name){
		 return empMapper.findAllByName(name);
	}

	public List<Emp> findAllLikeAndName(String likeName){
		 return empMapper.findAllLikeAndName(likeName);
	}

	public Emp findById(String id){
		 return empMapper.findById(id);
	}

	public int modifyById(Emp updated,String id){
		 return empMapper.modifyById(updated,id);
	}

	public int insertList(List<Emp> list){
		 return empMapper.insertList(list);
	}

	public List<Emp> findByNameLike(String likeName){
		 return empMapper.findByNameLike(likeName);
	}











































    @Resource
    private EmpMapper empMapper;

}
