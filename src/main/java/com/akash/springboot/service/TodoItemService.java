package com.akash.springboot.service;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akash.springboot.models.TodoItem;
import com.akash.springboot.repositories.TodoItemRepository;

@Service
public class TodoItemService {
	
	@Autowired
	private TodoItemRepository todoItemRepo;
	
	public TodoItem getTodoById(int id) {
		TodoItem todoItem=todoItemRepo.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("TodoItem id: " + id + " not found"));
		return todoItem;
	}
	
	public List<TodoItem> getTodos() {
		List<TodoItem> allItems=new ArrayList<>();
		todoItemRepo.findAll().forEach(elem->allItems.add(elem));
		return allItems;
	}
	
	public void createTodo(String description) {
		TodoItem newTodo=new TodoItem(description);
		todoItemRepo.save(newTodo);
	}
	
	public void deleteTodo(int id) {
		todoItemRepo.deleteById(id);
	}
	
	public void updateTodo(int id, String description, boolean complete) {
		TodoItem todoItem=getTodoById(id);
		todoItem.setDescription(description);
		todoItem.setComplete(complete);
		todoItem.setModifiedDate(Instant.now());
		todoItemRepo.save(todoItem);
	}
}
