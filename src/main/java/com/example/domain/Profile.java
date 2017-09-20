package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="tbl_profile")
@AllArgsConstructor
@NoArgsConstructor
public class Profile {

	
	@Id
	@TableGenerator(name ="idGen",table = "id_gen", pkColumnName="seq_name",
	valueColumnName="nextval",allocationSize=100, initialValue=1000)
	@GeneratedValue(strategy = GenerationType.TABLE, generator="idGen") //숫자여야 쓸수있어용
	private Long fno;
	private String fname;
	private boolean curr;
	//@GeneratedValue(strategy=GenerationType.IDENTITY) 는  mysql최적화 oralce needs sequence
}
