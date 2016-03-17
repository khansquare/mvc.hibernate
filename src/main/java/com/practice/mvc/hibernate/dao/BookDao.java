package com.practice.mvc.hibernate.dao;

import java.util.List;

import com.practice.mvc.hibernate.model.Book;

public interface BookDao {
	void saveBook(Book book);
	List<Book> findAllEmployees();
}
