package com.crud.springmvc.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Size(min=2, max=30)
	@Column(name = "first_name")
	private String firstName;

	@Size(min=2, max=30)
	@Column(name = "last_name")
	private String lastName;
	
	@NotEmpty @Email
	@Column(name = "email")
	private String email;
	
	@NotNull
	@Column(name = "address")
	private String address;
	
	@NotNull
	@Column(name = "city")
	private String city;
	
	@NotNull
	@Column(name = "birth_date")
	private Date birthDate;

	@NotNull
	@Column(name = "gender")
	private String gender;
	
	@NotNull @Min(10)
	@Column(name = "mobile_no")
	private String mobileNo;

}