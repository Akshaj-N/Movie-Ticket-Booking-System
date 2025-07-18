package com.movie.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.models.Movie;
import com.movie.models.Theatre;
import com.movie.models.TheatreShow;
import com.movie.models.User;
import com.movie.services.BookingService;
import com.movie.services.CustomerService;
import com.movie.services.MovieService;
import com.movie.services.ShowsService;
import com.movie.services.TheatreService;
import com.movie.services.UserService;

@Controller
public class AdminController {
	
	@Autowired HttpSession session;
	@Autowired UserService uservice;
	@Autowired MovieService mservice;
	@Autowired TheatreService tservice;
	@Autowired ShowsService sservice;
	@Autowired BookingService bservice;
	@Autowired CustomerService cservice;

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("users", uservice.allUsers().size());
		model.addAttribute("movies", mservice.allMovies().size());
		model.addAttribute("theatres", tservice.allTheatres().size());
		model.addAttribute("bookings", bservice.allBookings().size());
		model.addAttribute("customers", cservice.allCustomers().size());
		
		return "dashboard";
	}
	
	@GetMapping("/users")
	public String userslist(Model model) {
		model.addAttribute("list", uservice.allUsers());
		return "users";
	}
	
	@GetMapping("/movies")
	public String movielist(Model model) {
		model.addAttribute("list", mservice.allMovies());
		return "movies";
	}
	
	@GetMapping("/atrailer/{id}")
	public String movietrailer(@PathVariable("id")int mid, Model model) {
		model.addAttribute("movie", mservice.findMovieDetails(mid));
		return "atrailer";
	}
	
	@GetMapping("/theatres")
	public String theatreslist(Model model) {
		model.addAttribute("list", tservice.allTheatres());
		return "theatres";
	}
	
	@PostMapping("/theatres")
	public String saveTheatre(Theatre th, RedirectAttributes ra) {
		Theatre tt= tservice.saveTheatre(th);
		ra.addFlashAttribute("msg", "Theatre created successfully");
		return "redirect:/theatres";
	}
	
	@GetMapping("/bookings")
	public String bookingslist(Model model) {
		model.addAttribute("list", bservice.allBookings());
		return "bookings";
	}
	
	@GetMapping("/shows")
	public String showslist(Model model) {
		model.addAttribute("list", sservice.allShows());
		return "shows";
	}
	
	@PostMapping("/shows")
	public String saveshows(TheatreShow ts, RedirectAttributes ra) {
		sservice.saveShow(ts);
		ra.addFlashAttribute("msg", "Show added successfully");
		return "redirect:/shows";
	}
	
	@GetMapping("/addmovie")
	public String addmovie() {
		return "addmovie";
	}
	
	@GetMapping("/editmovie/{mid}")
	public String editmovie(@PathVariable("mid") int mid,Model model) {
		model.addAttribute("movie", mservice.findMovieDetails(mid));
		return "editmovie";
	}
	
	@PostMapping("/editmovie/{mid}")
	public String editmovieprocess(@PathVariable("mid") int mid,Movie movie,RedirectAttributes ra) {
		movie.setMid(mid);
		mservice.updateMovie(movie);
		ra.addFlashAttribute("msg", "Movie updated successfully..");
		return "redirect:/movies";
	}
	
	@GetMapping("/delmovie/{mid}")
	public String deletemovie(@PathVariable("mid") int mid,RedirectAttributes ra) {
		mservice.deleteMovie(mid);
		ra.addFlashAttribute("msg", "Movie deleted successfully");
		return "redirect:/movies";
	}
	
	@GetMapping("/madetails/{mid}")
	public String moviedetails(@PathVariable("mid") int mid,Model model) {
		model.addAttribute("movie", mservice.findMovieDetails(mid));
		return "madetails";
	}
	
	@PostMapping("/addmovie")
	public String addmovieprocess(Movie movie,MultipartFile photo,MultipartFile bphoto,RedirectAttributes ra) {
		mservice.saveMovie(movie,photo,bphoto);
		ra.addFlashAttribute("msg", "Movie added successfully..");
		return "redirect:/movies";
	}
	
	@GetMapping("/customers")
	public String customerslist(Model model) {
		model.addAttribute("list", cservice.allCustomers());
		return "customers";
	}
	
	@GetMapping("/changepwd")
	public String changepassword() {
		return "changepwd";
	}
}
