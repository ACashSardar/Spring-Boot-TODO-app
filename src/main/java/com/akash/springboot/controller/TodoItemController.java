package com.akash.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.akash.springboot.models.TodoItem;
import com.akash.springboot.service.TodoItemService;

@RestController
public class TodoItemController {
	
	@Autowired
	TodoItemService todoItemService;
	
	@GetMapping("/")
	public ModelAndView getTodos() {
		List<TodoItem> items=todoItemService.getTodos();
		ModelAndView mv = new ModelAndView();
		mv.addObject("itemList", items);
		mv.setViewName("index");
		return mv;
	}
	
	@PostMapping("/create")
	public ModelAndView createTodos(@RequestParam String description) {
		todoItemService.createTodo(description);
		
		return new ModelAndView("redirect:/");
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView deleteTodos(@PathVariable int id) {
		todoItemService.deleteTodo(id);
		return new ModelAndView("redirect:/");
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView editTodos(@PathVariable int id) {
		TodoItem todoItem= todoItemService.getTodoById(id);
		return new ModelAndView("update","todoItem",todoItem);
	}
	
	@PostMapping("/update/{id}")
	public ModelAndView updateTodos(@PathVariable int id, 
			@RequestParam String description, @RequestParam String isComplete) {
		
		todoItemService.updateTodo(id,description,isComplete.equals("true"));
		return new ModelAndView("redirect:/");
	}
}
