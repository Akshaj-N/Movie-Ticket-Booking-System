package com.movie.controllers;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.movie.models.BookingDTO;
import com.movie.models.Bookings;
import com.movie.models.MovieInfoModel;
import com.movie.models.User;
import com.movie.services.BookingService;
import com.movie.services.CustomerService;
import com.movie.services.EmailService;
import com.movie.services.MovieService;
import com.movie.services.ShowsService;
import com.movie.services.TheatreService;
import com.movie.services.UserService;

@Controller
public class CustomerController {
	
	@Autowired HttpSession session;
	@Autowired UserService uservice;
	@Autowired MovieService mservice;
	@Autowired TheatreService tservice;
	@Autowired ShowsService sservice;
	@Autowired BookingService bservice;
	@Autowired CustomerService cservice;
	@Autowired EmailService email;
	@Autowired ServletContext ctx;


	@GetMapping("bhistory")
	public String bookinghistory(Model model) {
		User user=(User)session.getAttribute("user");		
		model.addAttribute("list", bservice.customerBookings(user.getId()));
		return "bhistory";
	}
	
	@PostMapping("/seatbook")
	public String seatbooking(MovieInfoModel info,Model model) {
		model.addAttribute("info", info);
		model.addAttribute("movie", mservice.findMovieDetails(info.getMid()));
		model.addAttribute("show", sservice.findShow(info.getSid()));
		model.addAttribute("theatre", tservice.findTheatre(info.getTid()));
		String seatstr=bservice.getBookedSeats(info.getMid(),info.getTid(),info.getSid(), info.getBdate());
		System.out.println(seatstr);
		List<String> seats=null; 
		if(seatstr !=null) seats=Arrays.asList(seatstr.split(","));
		model.addAttribute("seats", seats);
		model.addAttribute("rows", new String[] {"A", "B", "C", "D", "E", "F","G","H","I","J","K","L","M","N","O"});
		return "seatbook";
	}
	
	@PostMapping("/book")
	public String saveBooking(BookingDTO dto) {
		System.out.println(dto);
		Bookings bk=BookingDTO.toEntity(dto);
		User user=(User)session.getAttribute("user");
		System.out.println(user);
		bk.setAmount(dto.getAmount()*dto.getNoseat());
		bk.setCustomer(cservice.findById(user.getId()));
		bk.setMovie(mservice.findMovieDetails(dto.getMid()));
		bk.setShow(sservice.findShow(dto.getSid()));
		bk.setTheatre(tservice.findTheatre(dto.getTid()));
		int id=bservice.saveBooking(bk);
		return "redirect:/payment/"+id;
	}
	
	@GetMapping("/payment/{id}")
	public String paymentpage(@PathVariable("id") int id,Model model) {
		model.addAttribute("bk", bservice.findBookingDetails(id));
		return "payment";
	}
	
	@PostMapping("/showticket")
	public String showticket(String bid,Model model) {
		User user=(User)session.getAttribute("user");
		String uname=user.getUname();
		String userid=user.getUserid();
		Bookings bk=bservice.findBookingDetails(Integer.parseInt(bid));
				
		String message=String.format(mailcontent(), uname,uname,bk.getBid(),bk.getMovie().getMname(),
				bk.getTheatre().getTname(),bk.getShow().getShowname(),bk.getBdate(),
				bk.getNoseat(),bk.getSeats(),bk.getAmount());
		email.sendSimpleMessage(userid, "Registered success - Big Cinemas",message	);
		model.addAttribute("bk", bk);
		return "showticket";
	}
	
	@SuppressWarnings("resource")
	public String mailcontent() {
		InputStream inputStream;
		String result="";
		try {
			inputStream = new FileInputStream(ctx.getRealPath("/")+"tickettemplate.html");
			result = new BufferedReader(new InputStreamReader(inputStream))
					.lines().collect(Collectors.joining("\n"));		
		} catch (IOException e) {
			System.out.println("Error "+e.getMessage());
		}
        return result;
	}
}
