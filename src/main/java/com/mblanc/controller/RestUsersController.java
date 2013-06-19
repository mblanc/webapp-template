package com.mblanc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codahale.metrics.annotation.Timed;
import com.mblanc.model.User;
import com.mblanc.repository.UserRepository;

@Controller
@RequestMapping(value = "/rest")
public class RestUsersController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	@ResponseBody
	@Timed
	public List<User> list() {
		List<User> users = userRepository.findAllWithCache();
		return users;
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.GET)
	@ResponseBody
	@Timed
	public User view(@PathVariable Long id) {
		User user = userRepository.findOne(id);
		return user;
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST)
	@Timed
	public ResponseEntity<String> create(@RequestBody @Valid User user) {
		user = userRepository.save(user);
		HttpHeaders responseHeaders = new HttpHeaders();
		String location = "/rest/users/" + user.getId();
		responseHeaders.set("Location", location);
		return new ResponseEntity<String>("User " + location + " created.", responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.PUT)
	@Timed
	public ResponseEntity<String> update(@RequestBody @Valid User user) {
		user = userRepository.save(user);
		String location = "/rest/users/" + user.getId();
		return new ResponseEntity<String>("User " + location + " updated.", HttpStatus.OK);
	}

	@RequestMapping(value = "/users/{id}", method = RequestMethod.DELETE)
	@Timed
	public ResponseEntity<String> delete(@PathVariable Long id) {
		userRepository.delete(id);
		String location = "/rest/users/" + id;
		return new ResponseEntity<String>("User " + location + " deleted.", HttpStatus.OK);
	}

}
