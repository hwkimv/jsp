package dao;

import dto.Book;
import lombok.Getter;

import java.util.ArrayList;

public class BookRepository {

    private ArrayList<Book> listOfBooks = new ArrayList<Book>();
    @Getter
    private static BookRepository instance = new BookRepository();

    public BookRepository() {
        Book book1 = new Book("ISBN1234", "C# 프로그래밍", 27000);
        book1.setAuthor("우재남");
        book1.setDescription("C#를 처음 접하는 독자를 대상으로 입문서 수업처럼 자세히 설명한 책이다. 꼭 알아야 할 핵심 개념을 기본 예제로 최대한 쉽게 설명했으며, 중요한 내용은 응용 예제, 퀴즈, 셀프 스터디, 예제 모음으로 한번 더 복습할 수 있다.\n");
        book1.setPublisher("한빛미디어");
        book1.setCategory("IT");
        book1.setUnitsInStock(1000);
        book1.setReleaseDate("2022/10/06");

        Book book2 = new Book("ISBN1235", "자바 마스터", 30000);
        book2.setAuthor("송미영");
        book2.setDescription("자바를 처음 배우는 학생을 위해 자바의 기본 개념과 실습 예제를 그림을 이용하여 쉽게 설명한다. 자바의 이론과 개념→기본 예제→프로젝트 순으로 단계별 학습이 가능하며, 각 챕터의 프로젝트를 실습하면서 온라인 서점을 완성할 수 있도록 구성하였습니다.\n");
        book2.setPublisher("한빛미디어");
        book2.setCategory("IT");
        book2.setUnitsInStock(1000);
        book2.setReleaseDate("2023/01/01");

        Book book3 = new Book("ISBN1236", "파이썬 프로그래밍", 25000);
        book3.setAuthor("최성철");
        book3.setDescription("파이썬으로 프로그래밍을 시작하는 입문자가 쉽게 이해할 수 있도록 기본 개념을 상세하게 설명하며, 다양한 예제를 제시합니다. 또한 프로그래밍의 기초 원리를 이해하면서 파이썬으로 데이터를 처리하는 기법도 배웁니다.\n");
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

    public void addBook(Book book) {
        System.out.println("도서 등록됨: " + book.getName());
        listOfBooks.add(book);
    }
}
