package com.austin.books.bookcontroller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.austin.books.models.Book;
import com.austin.books.services.BookService;

@Controller
public class BookController {
	private final BookService bookService;
	
    public BookController(BookService bookService){
        this.bookService = bookService;
    }
    
    @RequestMapping("/books/{id}")
    public String bookpage(Model model, @PathVariable("id")Long id) {
    	Book book = bookService.findBook(id);
    	model.addAttribute(book);
    	return "bookpage.jsp";
    }
    
    @RequestMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "index.jsp";
}
}
