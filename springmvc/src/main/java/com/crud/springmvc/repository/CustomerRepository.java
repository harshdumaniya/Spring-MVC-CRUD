package com.crud.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.crud.springmvc.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
