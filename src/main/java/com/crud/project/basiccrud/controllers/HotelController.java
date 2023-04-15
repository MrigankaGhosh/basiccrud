package com.crud.project.basiccrud.controllers;

import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.project.basiccrud.dal.entities.Hotel;
import com.crud.project.basiccrud.services.HotelService;

@Controller
public class HotelController {

	public static final Logger log = Logger.getLogger(HotelController.class);

	@Autowired
	HotelService service;

	public HotelService getService() {
		return service;
	}

	public void setService(HotelService service) {
		this.service = service;
	}

	// Add Hotel

	@RequestMapping("addHotelPage")
	public String addHotelPage() {
		log.info(".............Inside addHotelPage controller.........");
		return "addHotelPage";
	}

	@RequestMapping(value = "addHotel", method = RequestMethod.POST)
	public String addHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		int result = service.add(hotel);
		log.info(".............Inside addHotel controller.........");
		model.addAttribute("result", "Hotel Data with ID: " + result + " added successfully!!!");
		return "addHotelPage";
	}

	// Update Hotel

	@RequestMapping("updateHotelPage")
	public String updateHotelPage() {
		log.info(".............Inside addHotelPage controller.........");
		return "updateHotelPage";
	}

	@RequestMapping(value = "updateHotel", method = RequestMethod.POST)
	public String updateHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		service.update(hotel);
		model.addAttribute("result", "Hotel Data updated successully !!");
		return "updateHotelPage";
	}

	// Delete Code

	@RequestMapping("deleteHotelPage")
	public String deleteHotelPage() {
		log.info(".............Inside deleteHotelPage controller.........");
		return "deleteHotelPage";
	}

	@RequestMapping(value = "deleteHotel", method = RequestMethod.POST)
	public String deleteHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		log.info(".........DeleteHotel method in HotelController executed");
		service.delete(hotel);
		return "deleteHotelPage";
	}

	// Display One Hotel

	@RequestMapping("display")
	public String display(ModelMap model) {
		log.info(".............Inside display controller.........");
		List<Hotel> hotels = service.display();
		model.addAttribute("hotels", hotels);
		return "displayPage";
	}
}
