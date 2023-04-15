package com.crud.project.basiccrud.dal.dao;

import java.util.List;

import com.crud.project.basiccrud.dal.entities.Hotel;

public interface HotelDao {

	public int add(Hotel hotel);

	public void update(Hotel hotel);

	public void delete(Hotel hotel);

	public List<Hotel> display();
}
