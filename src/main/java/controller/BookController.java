package controller;

import dao.BookRepository;
import dto.Book;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/books")
public class BookController {

    @Value("${file.upload-dir}")
    private String uploadDir;

    @PostMapping("/add")
    public String addBook(@RequestParam("bookId") String bookId,
                          @RequestParam("name") String name,
                          @RequestParam("unitPrice") String unitPrice,
                          @RequestParam("author") String author,
                          @RequestParam("publisher") String publisher,
                          @RequestParam("releaseDate") String releaseDate,
                          @RequestParam("description") String description,
                          @RequestParam("category") String category,
                          @RequestParam("unitsInStock") String unitsInStock,
                          @RequestParam("condition") String condition,
                          @RequestParam("imageFile") MultipartFile imageFile) throws IOException {

        int price = unitPrice.isEmpty() ? 0 : Integer.parseInt(unitPrice);
        long stock = unitsInStock.isEmpty() ? 0 : Long.parseLong(unitsInStock);

        String fileName = "";
        if (!imageFile.isEmpty()) {
            fileName = imageFile.getOriginalFilename();
            File saveFile = new File(uploadDir, fileName);
            imageFile.transferTo(saveFile);
        }

        Book newBook = new Book();
        newBook.setBookId(bookId);
        newBook.setName(name);
        newBook.setUnitPrice(price);
        newBook.setAuthor(author);
        newBook.setPublisher(publisher);
        newBook.setPublisher(releaseDate);
        newBook.setDescription(description);
        newBook.setCategory(category);
        newBook.setUnitsInStock(stock);
        newBook.setCondition(condition);
        newBook.setFilename(fileName);

        BookRepository.getInstance().addBook(newBook);

        return "redirect:/books/list";  // 도서 목록 페이지
    }
}
