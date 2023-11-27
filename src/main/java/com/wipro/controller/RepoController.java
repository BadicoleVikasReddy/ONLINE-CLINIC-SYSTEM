package com.wipro.controller;

import java.net.http.HttpResponse;
import java.sql.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.POJO.AdminLoginPOJO;
import com.wipro.POJO.AppointmentDetailsPOJO;
import com.wipro.POJO.DoctorDetailsPOJO;
import com.wipro.POJO.RepoLoginPOJO;
import com.wipro.POJO.UserRegistrationPOJO;
import com.wipro.dao.AdminLoginDAO;
import com.wipro.dao.AppointmentDetailsDAO;
import com.wipro.dao.DoctorDAO;
import com.wipro.dao.RepoLoginDAO;
import com.wipro.dao.UserRegistrationDAO;

@Controller
public class RepoController {
	@Autowired
	RepoLoginDAO repoL;
	RepoLoginPOJO rlp;
	@Autowired
	DoctorDAO docs;
	@Autowired
	AdminLoginDAO adL;
	AdminLoginPOJO adp;
	@Autowired
	UserRegistrationDAO urd;

	@Autowired
	AppointmentDetailsDAO add;

	@GetMapping("/")
	public String home() {
		return "Home";
	}
	//........................RepoLogin......................

	@GetMapping("/repoLogin")
	public String repoLogin() {
		return "reporter";
	}

	@PostMapping("/repoLogin")
	public String repoLogin(@RequestParam String reponame, @RequestParam String repopass,HttpServletRequest request,HttpServletResponse response ) {
		RepoLoginPOJO rlp = repoL.findById(reponame).orElse(new RepoLoginPOJO());
		if (!reponame.equalsIgnoreCase("reporter")) {
			return "redirect:/reporter";
		} else if (rlp.getUsername().equalsIgnoreCase(reponame) & rlp.getPassword().equalsIgnoreCase(repopass)) {
			HttpSession session=request.getSession();
			session.setAttribute("repologged", reponame);
			return "redirect:/welcomerepo";
		} else {

			return "redirect:/reporter";
		}

	}
	
	@GetMapping("/ChangePassword")
	public String ChangePassword(HttpSession session) {
		
		return "ChangePassword";
	}

	@PostMapping("/ChangePassword")
	public String updateChangedPassword(@RequestParam String oldpass, @RequestParam String newpass,
			@RequestParam String confpass) {

		RepoLoginPOJO rlp = repoL.findById("reporter").orElse(new RepoLoginPOJO());
		if (rlp.getPassword().equals(oldpass) & newpass.equals(confpass)) {
			repoL.deleteAll();
			RepoLoginPOJO rlp1 = new RepoLoginPOJO();
			rlp1.setUsername(rlp.getUsername());
			rlp1.setPassword(confpass);
			repoL.save(rlp1);
			return "welcomerepo";

		} else {
			return "ChangePassword";
		}
	}

	@GetMapping("/UpdateDoctorStatus")
	public String DocturStatus(HttpSession session) {
		
		return "UpdateDoctorStatus";
	}

	@PostMapping("/UpdateDoctorStatus")
	public String updateDoctorStatus(@RequestParam int DoctorId, @RequestParam String DoctorStatus) {
		DoctorDetailsPOJO ddp = docs.findById(DoctorId).orElse(new DoctorDetailsPOJO());
		ddp.setDoctorStatus(DoctorStatus);
		docs.save(ddp);
		return "welcomerepo";
	}
	@GetMapping("/welcomerepo")
	public String logoutrepo() {
		return "welcomerepo";

	}
	@GetMapping("/repologout")
	public String repologout(HttpSession session) {
		session.removeAttribute("repologged");
		session.invalidate();
		return "redirect:/";
	}
// ......................Admin operations.....................................................

	@GetMapping("/AdminLogin")
	public String Admin() {
		return "AdminLogin";
	}

	@PostMapping("/AdminLogin")
	public String AdminLogin(@RequestParam String Adminname, @RequestParam String Adminpass,HttpServletRequest request,HttpServletResponse response ) {

		AdminLoginPOJO adp = adL.findById(Adminname).orElse(new AdminLoginPOJO());
		if (!Adminname.equalsIgnoreCase("Admin")) {
			return "redirect:/AdminLogin";
		} else if (adp.getUsername().equalsIgnoreCase(Adminname) & adp.getPassword().equalsIgnoreCase(Adminpass)) {
			HttpSession session=request.getSession();
			session.setAttribute("adminlogged", Adminname);
			return "/welcomeAdmin";
		} else {

			return "redirect:/AdminLogin";
		}

	}

	@GetMapping("/ChangeAdminPassword")
	public String ChangeAdminPassword() {

		return "ChangeAdminPassword";
	}

	@PostMapping("/ChangeAdminPassword")
	public String updateChangedAdminPassword(@RequestParam String oldpass, @RequestParam String newpass,
			@RequestParam String confpass) {

		AdminLoginPOJO alp = adL.findById("admin").orElse(new AdminLoginPOJO());
		if (alp.getPassword().equals(oldpass) & newpass.equals(confpass)) {
			alp.setPassword(confpass);
			adL.save(alp);
			return "/welcomeAdmin";

		} else {
			return "ChangeAdminPassword";
		}
	}

	@GetMapping("/AddDoctorDetails")
	public String AddDoctorDetails() {

		return "AddDoctorDetails";
	}

	@PostMapping("/AddDoctorDetails")
	public String AddDoctorDetails(DoctorDetailsPOJO ddp) {
		System.out.println(ddp);
		docs.save(ddp);
		return "/welcomeAdmin";
	}

	@GetMapping("/ModifyDoctorDetails")
	public String ModifyDoctorDetails() {

		return "ModifyDoctorDetails";
	}

	@PostMapping("/ModifyDoctorDetails")
	public String ModifyDoctorDetails(DoctorDetailsPOJO ddp) {
		DoctorDetailsPOJO dp = docs.findById(ddp.getDoctorId()).orElse(new DoctorDetailsPOJO());
		dp.setDoctorName(ddp.getDoctorName());
		dp.setDOB(ddp.getDOB());
		dp.setDOJ(ddp.getDOJ());
		dp.setAddress(ddp.getAddress());
		dp.setDoctorSpecification(ddp.getDoctorSpecification());
		dp.setDoctorStatus(ddp.getDoctorStatus());
		dp.setGender(ddp.getGender());
		dp.setNumber(ddp.getNumber());
		dp.setQualification(ddp.getQualification());
		dp.setYearsOfExperience(ddp.getYearsOfExperience());
		docs.save(dp);
		return "/welcomeAdmin";
	}

	@GetMapping("/DeleteDoctorDetails")
	public String DeleteDoctorDetails() {

		return "DeleteDoctorDetails";
	}

	@PostMapping("/DeleteDoctorDetails")
	public String DeleteDoctorDetailsById(@RequestParam int DoctorId) {
		docs.deleteById(DoctorId);
		return "/welcomeAdmin";
	}

	@GetMapping("/ViewDoctorDetails")
	public String ViewDoctorDetails() {

		return "ViewDoctorDetails";
	}

	@PostMapping("/ViewDoctorDetails")
	public String ViewDoctorDetails(@RequestParam int DoctorId, ModelMap model) {
		Optional<DoctorDetailsPOJO> dp = docs.findById(DoctorId);
		if (dp.isPresent())
			model.addAttribute("dp", dp.get());
		else
			model.addAttribute("error", "No doctor details found");
		return "ViewDoctorDetails";
	}
	@GetMapping("/welcomeAdmin")
	public String logoutadmin() {
		return "welcomeAdmin";

	}
	@GetMapping("/AdminLogout")
	public String adminLogout(HttpSession session) {
		session.removeAttribute("adminlogged");
		session.invalidate();
		return "redirect:/";
	}
	
	// ............User operations ...................................

	@GetMapping("/UserLogin")
	public String UserLogin() {
		
		return "UserLogin";
	}

	@PostMapping("/UserLogin")
	public String UserLogin(@RequestParam String username, @RequestParam String userpass, HttpServletRequest request,HttpServletResponse response ) {
		UserRegistrationPOJO urp = urd.findById(username).orElse(new UserRegistrationPOJO());
		
		if (urp.getUsername().equalsIgnoreCase(username) & urp.getPassword().equalsIgnoreCase(userpass)) {
			HttpSession session=request.getSession();
			session.setAttribute("loggedUser", username);
			
			return "redirect:/welcomeUser";
		} else {

			return "UserLogin";
		}

	}
	@GetMapping("/welcomeUser")
	public String welcomeUser(HttpSession session) {
		
		return "welcomeUser";
	}
	

	@GetMapping("/registration")
	public String registration() {

		return "UserRegistration";
	}

	@PostMapping("/registration")
	public String registration(UserRegistrationPOJO urp) {
		urd.save(urp);
		return "redirect:/UserLogin";
	}

	@GetMapping("/ChangeUserPassword")
	public String ChangeUserPassword(HttpSession session) {
		
		return "ChangeUserPassword";
	}

	@PostMapping("/ChangeUserPassword")
	public String ChangeUserPassword(@RequestParam String username, @RequestParam String oldpass,
			@RequestParam String newpass, @RequestParam String confpass) {
		UserRegistrationPOJO urp = urd.findById(username).orElse(new UserRegistrationPOJO());
		if (urp.getPassword().equals(oldpass) & newpass.equals(confpass)) {
			urp.setPassword(confpass);
			urd.save(urp);
			return "redirect:/welcomeUser";

		} else {
			return "ChangeUserPassword";
		}
	}

	@GetMapping("/EditRegistrationDetails")
	public String EditRegistrationDetails(HttpSession session, ModelMap model) {
		
		String username = (String) session.getAttribute("loggedUser");
		UserRegistrationPOJO user = urd.findById(username).get();
		model.addAttribute("user", user);
		return "EditRegistrationDetails";
	}

	@PostMapping("/EditRegistrationDetails")
	public String EditRegistrationDetails(UserRegistrationPOJO urp1) {
		
			UserRegistrationPOJO urp = urd.findById(urp1.getUsername()).orElse(new UserRegistrationPOJO());
			urp.setAddress(urp1.getAddress());
			urp.setAge(urp1.getAge());
			urp.setEmail(urp1.getEmail());
			urp.setFirstname(urp1.getFirstname());
			urp.setGender(urp1.getGender());
			urp.setLastname(urp1.getLastname());
			urp.setPassword(urp1.getPassword());
			urp.setPhoneno(urp1.getPhoneno());
			urp.setUsername(urp1.getUsername());
			urd.save(urp);
			return "redirect:/welcomeUser";

	}

	@GetMapping("/RequestForAppointment")
	public String requestForAppointment(ModelMap model, HttpSession session) {
		
		List<DoctorDetailsPOJO> doctors = docs.findByDoctorStatus("Working");
		model.addAttribute("doctors", doctors);
		return "requestforAppointment";
	}

	@PostMapping("/RequestForAppointment")
	public String requestForAppointmentPost(@RequestParam int doctorId, @RequestParam Date appointmentDate,
			HttpSession session) {
			String username = (String) session.getAttribute("loggedUser");
			Optional<DoctorDetailsPOJO> doctor = docs.findById(doctorId);
			if (doctor.isEmpty()) {
				return "redirect:/RequestForAppointment";
			} else {
				add.save(new AppointmentDetailsPOJO(username, doctorId, doctor.get().getDoctorName(),
						doctor.get().getDoctorSpecification(), appointmentDate));
				return "redirect:/welcomeUser";
			}
	}

	@GetMapping("/ViewAppointmentDetails")
	public String viewAppintmentDetails(HttpSession session, ModelMap model) {
		
		String username = (String) session.getAttribute("loggedUser");
		List<AppointmentDetailsPOJO> aps = (List<AppointmentDetailsPOJO>) add.findAll();
		model.addAttribute("aps", aps);
		return "ViewAppointmentDetails";
	}

	@GetMapping("/ViewRegistrationDetails")
	public String ViewRegistrationDetails(HttpSession session, ModelMap model) {
		
		String username = (String) session.getAttribute("loggedUser");
		Optional<UserRegistrationPOJO> up = urd.findById(username);
		if (up.isPresent())
			model.addAttribute("up", up.get());
		else
			model.addAttribute("error", "No User details found");
		return "ViewRegistrationDetails";
	}


	@GetMapping("/UserLogout")
	public String userLogout(HttpSession session) {
		session.removeAttribute("loggedUser");
		session.invalidate();
		return "redirect:/";
	}
}
