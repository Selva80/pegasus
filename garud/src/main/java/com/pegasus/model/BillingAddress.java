package com.pegasus.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class BillingAddress   implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
	@NotEmpty(message="apartment number is mandatory")
private String apartmentnumber;
	@NotEmpty
private String streetname;
	@NotEmpty
private String city;
	@NotEmpty
private String country;
	@NotEmpty
private String zipcode;
	@NotEmpty
	private String state;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getApartmentnumber() {
	return apartmentnumber;
}
public void setApartmentnumber(String apartmentnumber) {
	this.apartmentnumber = apartmentnumber;
}
public String getStreetname() {
	return streetname;
}
public void setStreetname(String streetname) {
	this.streetname = streetname;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getZipcode() {
	return zipcode;
}
public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}


}
