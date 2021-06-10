package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.dto.ChartData;
import com.ssafy.happyhouse.dto.City;
import com.ssafy.happyhouse.dto.Dong;
import com.ssafy.happyhouse.dto.Gugun;
import com.ssafy.happyhouse.dto.House;
import com.ssafy.happyhouse.model.service.CityService;
import com.ssafy.happyhouse.model.service.HouseService;
import com.ssafy.happyhouse.model.service.UserService;


@Controller
public class SearchController {
	@Autowired
	ServletContext servletContext;

	@Autowired
	private HouseService houseService;
	@Autowired
	private UserService userService;
	@Autowired
	private CityService cityService;

	@GetMapping("/listApt")
	public String searchApt() {
		return "searchApt";
	}
	
	@GetMapping("/searchAptDetail")
	public String searchAptDetail(@RequestParam String no, Model m) throws Exception {
		House house = houseService.searchAptDetail(no);
		m.addAttribute("house", house);
		
		return "searchAptDetail";
	}
	
	@GetMapping("/searchArea")
	public String searchArea(Model m) throws Exception {
		return "searchArea";
	}
	
	@GetMapping("/searchgugun")
	public String searchgugun(@RequestParam String sidocode, Model m, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		try {
			List<Gugun> guguns = cityService.selectGugun(sidocode.substring(0,2));
			System.out.println(guguns);
			if(guguns != null) {
				m.addAttribute("guguns", guguns);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/searchDong?city="+sidocode;
//		return "forward:/${pageContext.request.servletPath}";
	}
	@GetMapping("/searchdong")
	public String searchdong(String city, String guguncode, Model m) throws IOException {
		try {
			List<Dong> dongs = cityService.selectDong(guguncode);
			System.out.println(guguncode);
			m.addAttribute("dongs", dongs);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/searchDong?city="+city+"&gugun="+guguncode;
	}
//	
	@GetMapping("/searchDong") //city는 코드 넘기기 gugun, dong 은 한글로 넘기기
	public String searchDong(String city, String gugun, String dong, String sortCond, Model m, HttpServletRequest request) throws Exception {
		List<House> houses = new ArrayList<House>();
		List<City> cities = new ArrayList<City>();
		List<Gugun> guguns = new ArrayList<Gugun>();
		List<Dong> dongs = new ArrayList<Dong>();
		city = "11";
		cities = cityService.selectCity();
		m.addAttribute("cities", cities);
		guguns = cityService.selectGugun(city);
		m.addAttribute("guguns", guguns);
		
		if(gugun == null) {
			gugun = guguns.get(0).getGugun_name();
			dongs = cityService.selectDong(gugun);
			dong = dongs.get(0).getDong();
		}
		else if(dong == null) {
			dongs = cityService.selectDong(gugun);
			dong = dongs.get(0).getDong();
		}
		else {
			dongs = cityService.selectDong(gugun);
		}
		
		String sortName = "none";
		String direction = "asc";
		
		if(sortCond != null) {
			if(sortCond.contains("desc")) {
				int nameSize = sortCond.length()-4;
				sortName = sortCond.substring(0, nameSize);
				direction = "desc";
				m.addAttribute("selectedcond", sortName+direction);
			}else {
				sortName = sortCond;
				m.addAttribute("selectedcond", sortName);
			}
		}
		
		houses = houseService.selectDong(dong, sortName, direction);
		
		m.addAttribute("guguns", guguns);
		m.addAttribute("dongs", dongs);
		
		m.addAttribute("selectedcity", "서울특별시");
		m.addAttribute("selectedgugun", gugun);
		m.addAttribute("selecteddong", dong);
		
		m.addAttribute("houses", houses);

		return "searchArea";
	}
	@GetMapping("/searchApt") //city는 코드 넘기기 gugun, dong 은 한글로 넘기기
	public String searchApt(String city, String gugun, String apt_name, String sortCond, Model m, HttpServletRequest request) throws Exception {
		List<String> houses = new ArrayList<String>();
		List<City> cities = new ArrayList<City>();
		List<Gugun> guguns = new ArrayList<Gugun>();
		List<House> apts = new ArrayList<House>();
		city = "11";
		try {
			cities = cityService.selectCity();
			m.addAttribute("cities", cities);
			
			guguns = cityService.selectGugun(city);
			m.addAttribute("guguns", guguns);
			
			if(gugun == null) {
				gugun = guguns.get(0).getGugun_code();
			}
			houses = houseService.selectApts(gugun.substring(0, 5));
			m.addAttribute("houses", houses);
			
			String sortName = "none";
			String direction = "asc";
			
			if(apt_name == null) {
				apt_name = houses.get(0);
			}
			if(sortCond != null) {
				if(sortCond.contains("desc")) {
					int nameSize = sortCond.length()-4;
					sortName = sortCond.substring(0, nameSize);
					direction = "desc";
					m.addAttribute("selectedcond", sortName+direction);
				}else {
					sortName = sortCond;
					m.addAttribute("selectedcond", sortName);
				}
			}
			
			apts = houseService.selectApt(apt_name,sortName, direction);
			m.addAttribute("apts", apts);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		m.addAttribute("selectedcity", "서울특별시");
		m.addAttribute("selectedgugun", gugun);
		m.addAttribute("selectedApt", apt_name);
//		m.addAttribute("selectedsortCond", sortCond);
		
		return "searchApt";
	}
	
	
	@GetMapping("/chart")
	public String chart(@RequestParam("id") String id, String city, String gugun, String dong, Model m) throws Exception {
		List<City> cities = new ArrayList<City>();
		List<Gugun> guguns = new ArrayList<Gugun>();
		List<Dong> dongs = new ArrayList<Dong>();
		city = "11";
		cities = cityService.selectCity();
		m.addAttribute("cities", cities);
		guguns = cityService.selectGugun(city);
		m.addAttribute("guguns", guguns);
		
		if(gugun == null) {
			gugun = guguns.get(0).getGugun_name();
			dongs = cityService.selectDong(gugun);
			dong = dongs.get(0).getDong();
		}
		else if(dong == null) {
			dongs = cityService.selectDong(gugun);
			dong = dongs.get(0).getDong();
		}
		else {
			dongs = cityService.selectDong(gugun);
		}
		m.addAttribute("guguns", guguns);
		m.addAttribute("dongs", dongs);
		
		m.addAttribute("selectedcity", "서울특별시");
		m.addAttribute("selectedgugun", gugun);
		m.addAttribute("selecteddong", dong);
		//select bar info End
		
		//chart data Start
		List<ChartData> data = new ArrayList<>();
		StringBuilder sb = new StringBuilder();
		try {
			String add = userService.getUser(id).getuAddress();
			add = add.substring(8);
			String memberDong = add.substring(add.indexOf("(")+1,add.indexOf(")"));
			System.out.println(memberDong);
			
			data = houseService.selectData(memberDong);
			
			sb.append("[");
			for(int i = 0; i < data.size(); i++) {
				ChartData cd = data.get(i);
				sb.append("{\"month\":"+cd.getMonth()+",\"avgAmount\":"+cd.getAvgAmount()+"}");
						
				if(i < data.size()-1) sb.append(",");
			}
			sb.append("]");
			m.addAttribute("memberDong", memberDong);
			m.addAttribute("data", sb);
			
		
			data = houseService.selectData(dong);
			sb = new StringBuilder();
			sb.append("[");
			for(int i = 0; i < data.size(); i++) {
				ChartData cd = data.get(i);
				sb.append("{\"month\":"+cd.getMonth()+",\"avgAmount\":"+cd.getAvgAmount()+"}");
						
				if(i < data.size()-1) sb.append(",");
			}
			sb.append("]");
			m.addAttribute("cmpDong", dong);
			m.addAttribute("cmpData", sb);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "showChart";
	}
	
}
