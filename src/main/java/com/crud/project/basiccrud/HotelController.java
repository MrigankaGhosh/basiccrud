package com.crud.project.basiccrud;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping("homePage")
	public String homePage() {
		log.info(".............Inside homePage controller.........");
		return "homePage";
	}
	
	@RequestMapping("addHotelPage")
	public String addHotelPage() {
		log.info(".............Inside addHotelPage controller.........");
		return "addHotelPage";
	}

	@RequestMapping(value = "addHotel", method = RequestMethod.POST)
	public String addHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		int result = service.add(hotel);
		model.addAttribute("result", "Hotel Data with ID: " + result + " added successfully!!!");
		return "addHotelPage";
	}

	@RequestMapping(value = "updateHotel", method = RequestMethod.POST)
	public String updateHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		service.update(hotel);
		model.addAttribute("result", "Hotel Data updated successully !!");
		return "updateHotel";
	}

	@RequestMapping(value = "deleteHotel", method = RequestMethod.POST)
	public String deleteHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		if (service.delete(hotel)) {
			model.addAttribute("result", "Successfully deleted Hotel info !!");
		} else {
			model.addAttribute("result", "Hotel data is invalid");
		}
		return "deleteHotel";
	}

	@RequestMapping(value = "containsHotel", method = RequestMethod.POST)
	public String containsHotel(@ModelAttribute("hotel") Hotel hotel, ModelMap model) {
		if (service.contains(hotel)) {
			model.addAttribute("result", "Hotel information with id: " + hotel.getId() + " is present !!");
		} else {
			model.addAttribute("result", "Hotel information with id: " + hotel.getId() + " is NOT present !!");
		}
		return "containsHotel";
	}
	
	@RequestMapping(value="displayOne", method=RequestMethod.POST)
	public String displayOne(@ModelAttribute("name") String name, Model model) {
		log.info(".............Inside displayOne controller.........");
		Hotel hotel = service.displayOne(name);
		model.addAttribute("hotel", hotel);
		return "displayOne";
	}
}
