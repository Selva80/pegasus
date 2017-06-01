 package com.pegasus.model;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Customer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private  int custId;
	
	@NotEmpty(message="First Name is Required")
	private String cFirstName;
	@NotEmpty(message="First Name is Required")
	private String cLastName;
	@Column(unique=true,nullable=false)
	@NotEmpty(message="Email Address is mandatory")
	@Email
	private String cEmail;
	@NotEmpty(message="Phone number cannot be empty")
	@Size(min=10,max=10)
	private String phone;

@OneToOne(cascade=CascadeType.ALL)
@Valid
private Users users;

@OneToOne(cascade=CascadeType.ALL)
@Valid
private BillingAddress billingAddress;


@OneToOne(cascade=CascadeType.ALL)
@Valid
private ShippingAddress shippingAddress;

@OneToOne(cascade=CascadeType.ALL)
@Valid
private Cart cart;





public int getCustId() {
	return custId;
}

public void setCustId(int custId) {
	this.custId = custId;
}

public String getcFirstName() {
	return cFirstName;
}

public void setcFirstName(String cFirstName) {
	this.cFirstName = cFirstName;
}

public String getcLastName() {
	return cLastName;
}

public void setcLastName(String cLastName) {
	this.cLastName = cLastName;
}

public String getcEmail() {
	return cEmail;
}

public void setcEmail(String cEmail) {
	this.cEmail = cEmail;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public Users getUsers() {
	return users;
}

public void setUsers(Users users) {
	this.users = users;
}

public BillingAddress getBillingAddress() {
	return billingAddress;
}

public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}

public ShippingAddress getShippingAddress() {
	return shippingAddress;
}

public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}


	
}
