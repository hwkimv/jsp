package controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalcController {

    @PostMapping("/calc")
    public ModelAndView calc(HttpServletRequest request) {
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");

        int a = Integer.parseInt(num1); // 예외 가능
        int b = Integer.parseInt(num2); // 예외 가능
        int result = a / b;             // 예외 가능

        ModelAndView mv = new ModelAndView("ch11/result");
        mv.addObject("a", a);
        mv.addObject("b", b);
        mv.addObject("result", result);
        return mv;
    }
}
