package com.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.entity.PaymentBean;
import com.furniture.repository.PaymentRepository;

@Transactional
@Service
public class PaymentServiceImpl implements PaymentService {
	
@Autowired
PaymentRepository paymentRepository;


public PaymentBean add(PaymentBean payment) {
	// TODO Auto-generated method stub
	PaymentBean pay=paymentRepository.save(payment);
	return pay;
}

}
