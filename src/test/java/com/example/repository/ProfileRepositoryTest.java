package com.example.repository;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Example;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.MyDept;
import com.example.domain.MyEmp;
import com.example.domain.Profile;


@RunWith(SpringRunner.class)
@SpringBootTest
@Commit
public class ProfileRepositoryTest {

	@Inject
	ProfileRepository repo;
	
	@Inject
	MyDeptRepository dept;
	
	@Inject
	MyEmpRepository emp;
	
	
	@Test
	@Transactional
	public void testGeneratorValue() {
		Profile profile = new Profile();
		profile.setFname("user01_profile");
		repo.save(profile);
		
		repo.findAll().forEach(e->{
			System.out.println(e);
		});
		
		MyDept mydept = new MyDept();
		mydept.setDname("개발부");
		mydept.setLoc("서울");
		dept.save(mydept);
		
		dept.findAll().forEach(f->{
			System.out.println(f);
		});
		
		
		MyEmp myemp = new MyEmp();
		myemp.setEname("홍길동");
		emp.save(myemp);
		
		emp.findAll().forEach(e->{
			System.out.println(e);
		});
		
	}
	
	
	
	@Test
	@Transactional
	public void profilesave() {
		for(int i = 0; i<10; i++){
			Profile profile = new Profile();
			profile.setFname("user01_profile"+i);
			repo.save(profile);
		}
		repo.findAll().forEach(e->{
			System.out.println(e);
		});
		
	}
	
	@Test
	@Transactional
	public void profileall() {
		
		repo.findAll().forEach(e->{
			System.out.println(e);
		});
		
	}
	
	

}
