package dao;

import dto.Book;

import java.util.ArrayList;

public class BookRepository {

    private ArrayList<Book> listOfBooks = new ArrayList<Book>();

    public BookRepository() {
        Book book1 = new Book("ISBN1234", "C# 프로그래밍", 27000);
        book1.setAuthor("우재남");
        book1.setDescription("C# 프로그래밍의 기초부터 심화까지");
        book1.setPublisher("한빛미디어");
        book1.setCategory("IT");
        book1.setUnitsInStock(1000);
        book1.setReleaseDate("2022/10/06");

        Book book2 = new Book("ISBN1235", "자바 마스터", 30000);
        book2.setAuthor("송미영");
        book2.setDescription("자바 프로그래밍의 기초부터 심화까지");
        book2.setPublisher("한빛미디어");
        book2.setCategory("IT");
        book2.setUnitsInStock(1000);
        book2.setReleaseDate("2023/01/01");

        Book book3 = new Book("ISBN1236", "파이썬 프로그래밍", 25000);
        book3.setAuthor("최성철");
        book3.setDescription("파이썬 프로그래밍의 기초부터 심화까지");
        book3.setPublisher("한빛미디어");
        book3.setCategory("IT");
        book3.setUnitsInStock(1000);
        book3.setReleaseDate("2023/03/01");

        listOfBooks.add(book1);
        listOfBooks.add(book2);
        listOfBooks.add(book3);
    }
    public ArrayList<Book> getAllBooks() {
        return listOfBooks;
    }

    public Book getBookById(String bookId) {
        Book bookById = null;

        for (Book book : listOfBooks) {
            if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
                bookById = book;
                break;
            }
        }
        return bookById;
    }

}
