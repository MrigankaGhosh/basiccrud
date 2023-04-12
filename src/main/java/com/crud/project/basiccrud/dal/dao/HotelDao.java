package com.crud.project.basiccrud.dal.dao;

import com.crud.project.basiccrud.dal.entities.Hotel;

public interface HotelDao {

	public int add(Hotel hotel);

	public void update(Hotel hotel);

	public void delete(Hotel hotel);

	public Hotel displayOne(int id);

	public boolean contains(Hotel hotel);
}
