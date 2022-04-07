package com.crud.springmvc.service;

import java.util.List;

import com.crud.springmvc.model.Customer;

public interface CustomerService {

	public void save(Customer customer);

	public List<Customer> listAll();

	public Customer get(Long id);

	public void delete(Long id);

}
