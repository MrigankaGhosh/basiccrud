package com.crud.project.basiccrud.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.crud.project.basiccrud.dal.dao.HotelDao;
import com.crud.project.basiccrud.dal.entities.Hotel;

@Service
public class HotelServiceImpl implements HotelService {

	@Autowired
	HotelDao hotelDao;

	public HotelDao getHotelDao() {
		return hotelDao;
	}

	public void setHotelDao(HotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}

	@Override
	@Transactional
	public int add(Hotel hotel) {
		return hotelDao.add(hotel);
	}

	@Override
	@Transactional
	public void update(Hotel hotel) {
		hotelDao.update(hotel);
	}

	@Override
	@Transactional
	public boolean delete(Hotel hotel) {
		if (hotelDao.contains(hotel)) {
			hotelDao.delete(hotel);
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public Hotel displayOne(String name) {
		return hotelDao.displayOne(name);
	}

	@Override
	@Transactional
	public boolean contains(Hotel hotel) {
		if (hotelDao.contains(hotel)) {
			return true;
		}
		return false;
	}

}
