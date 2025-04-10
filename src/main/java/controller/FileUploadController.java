package controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;

import java.io.File;
import java.io.IOException;

@Controller
public class FileUploadController {

    @Value("${file.upload-dir}")
    private String uploadDir;

    @PostMapping("/upload")
    public String handleFileUpload(@RequestParam("username") String username,
                                   @RequestParam("myfile") MultipartFile file,
                                   Model model) throws IOException {

        // 파일이 비어있지 않으면 저장
        if (!file.isEmpty()) {
            String originalName = file.getOriginalFilename();
            File dest = new File(uploadDir, originalName);
            file.transferTo(dest);

            model.addAttribute("username", username);
            model.addAttribute("filename", originalName);
            model.addAttribute("filesize", file.getSize());
        }

        return "uploadResult";  // 결과를 보여줄 JSP 이름
    }
}
