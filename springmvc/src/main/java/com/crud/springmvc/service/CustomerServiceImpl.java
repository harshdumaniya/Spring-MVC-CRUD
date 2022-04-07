package com.crud.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.springmvc.model.Customer;
import com.crud.springmvc.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public void save(Customer customer) {
		customerRepository.save(customer);
	}

	@Override
	public List<Customer> listAll() {
		return customerRepository.findAll();
	}

	@Override
	public Customer get(Long id) {
		return customerRepository.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		customerRepository.deleteById(id);
	}

}