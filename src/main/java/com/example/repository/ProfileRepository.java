package com.example.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.domain.Profile;

public interface ProfileRepository extends JpaRepository<Profile, Long>{
	
	
	
}
