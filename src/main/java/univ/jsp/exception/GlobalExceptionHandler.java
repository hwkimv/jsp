package univ.jsp.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler({NumberFormatException.class, ArithmeticException.class})
    public String handleArithmeticAndFormat(Exception e, Model model) {
        model.addAttribute("msg", e.getMessage());
        return "error";  // → /webapp/error.jsp
    }
}