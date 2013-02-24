package com.mblanc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mblanc.model.User;
import com.mblanc.repository.UserRepository;

@Controller
public class UsersController {

	@Autowired
	private UserRepository userRepository;
	
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public ModelAndView list() {
		Iterable<User> users = userRepository.findAllWithCache();
		return new ModelAndView("users/list", new ModelMap("users", users));
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable Long id) {
		User user = userRepository.findOne(id);
		return new ModelAndView("users/view", new ModelMap(user));
	}

	@RequestMapping(value = "/users/new", method = RequestMethod.GET)
	public ModelAndView create() {
		User user = new User();
		return new ModelAndView("users/new", new ModelMap(user));
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public String create(User user, BindingResult result) {
		if (result.hasErrors()) {
			return "users/new";
		} else {
			user = userRepository.save(user);
			return "redirect:/users/" + user.getId();
		}
	}

	@RequestMapping(value = "/users/{id}/edit", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable Long id) {
		User user = userRepository.findOne(id);
		return new ModelAndView("users/edit", new ModelMap(user));
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.PUT)
	public String update(@PathVariable Long id, @ModelAttribute User user, BindingResult result) {
		if (result.hasErrors()) {
			return "users/edit";
		} else {
			user = userRepository.save(user);
			return "redirect:/users/" + id;
		}
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
	public ModelAndView delete(@PathVariable Long id) {
		userRepository.delete(id);
		return new ModelAndView("redirect:/users");
	}

}
