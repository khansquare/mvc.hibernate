package com.practice.mvc.hibernate.service;

import java.util.List;

import com.practice.mvc.hibernate.model.Book;

public interface BookService {
	void saveBook(Book book);
	List<Book> findAllEmployees();
}
