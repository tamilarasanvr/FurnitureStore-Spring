package com.furniture.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.furniture.entity.PaymentBean;

public interface PaymentRepository extends JpaRepository<PaymentBean, Integer> {

}
