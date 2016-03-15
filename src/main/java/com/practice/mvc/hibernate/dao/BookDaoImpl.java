package com.practice.mvc.hibernate.dao;

import org.springframework.stereotype.Repository;

import com.practice.mvc.hibernate.model.Book;
@Repository("bookDao")
public class BookDaoImpl extends AbstractDao<Integer, Book> implements BookDao {

	@Override
	public void saveBook(Book book) {
		persist(book);
	}
}
