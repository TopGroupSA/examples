package org.topgroup.restsample.service;

import java.math.BigDecimal;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.topgroup.restsample.model.Book;

@Path("/book")
public class BookServiceBean implements BookService {

	@GET
	@Path("/{isbn}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Override
	public Book get(@PathParam("isbn") String isbn) {
		if ("0321356683".equals(isbn)) {
			Book book = new Book();
			book.setIsbn(isbn);
			book.setTitle("Effective Java (2nd Edition)");
			book.setPrice(new BigDecimal("38.13"));
			return book;
		}
		return null;
	}

}
