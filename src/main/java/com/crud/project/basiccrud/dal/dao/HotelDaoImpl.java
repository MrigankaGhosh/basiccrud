package com.crud.project.basiccrud.dal.dao;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.crud.project.basiccrud.dal.entities.Hotel;

@Repository
public class HotelDaoImpl implements HotelDao {
	
	public static final Logger log = Logger.getLogger(HotelDaoImpl.class);

	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public int add(Hotel hotel) {
		Integer saved = (Integer) hibernateTemplate.save(hotel);
		return saved;
	}

	@Override
	public void update(Hotel hotel) {
		hibernateTemplate.update(hotel);
	}

	@Override
	public void delete(Hotel hotel) {
		hibernateTemplate.delete(hotel);
	}

	@Override
	public Hotel displayOne(String name) {
		log.info("..........displayOne method");
		Hotel hotel = hibernateTemplate.get(Hotel.class, name);
		return hotel;
	}

	@Override
	public boolean contains(Hotel hotel) {
		if (hibernateTemplate.contains(hotel)) {
			return true;
		}
		return false;
	}

}
