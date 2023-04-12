package com.crud.project.basiccrud.services;

import com.crud.project.basiccrud.dal.entities.Hotel;

public interface HotelService {

	public int add(Hotel hotel);

	public void update(Hotel hotel);

	public boolean delete(Hotel hotel);

	public boolean contains(Hotel hotel);

	public Hotel displayOne(int id);
}
