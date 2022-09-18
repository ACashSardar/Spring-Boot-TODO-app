package com.akash.springboot.repositories;

import org.springframework.data.repository.CrudRepository;

import com.akash.springboot.models.TodoItem;

public interface TodoItemRepository extends CrudRepository<TodoItem, Integer> {

}
