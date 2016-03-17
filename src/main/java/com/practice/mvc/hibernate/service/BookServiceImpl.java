package com.practice.mvc.hibernate.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.mvc.hibernate.dao.BookDao;
import com.practice.mvc.hibernate.model.Book;

@Service("bookService")
@Transactional
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao dao;
	
	@Override
	public void saveBook(Book book) {
		dao.saveBook(book);
	}

	@Override
	public List<Book> findAllEmployees() {	
		return dao.findAllEmployees();
	}
}
