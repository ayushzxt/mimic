package com.mock.project.api;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mock.project.entity.MockConfiguration;
import com.mock.project.service.MockService;

@Controller
@RequestMapping("/api/mocks")
public class MockController {

    @Autowired
    private MockService mockService;

    @PostMapping("/configure")
    public ResponseEntity<String> configureMock(@RequestBody MockConfiguration mockConfig) {
        mockService.saveMockConfiguration(mockConfig);
        return ResponseEntity.ok("Mock configured successfully");
    }

    @RequestMapping("/**")
    public ResponseEntity<Object> handleMockRequest(HttpServletRequest request) {
        return mockService.getMockResponse(request);
    }

    @GetMapping("/list")
    public String listMocks(Model model) {
        List<MockConfiguration> mocks = mockService.getAllMocks();
        System.out.println(mocks);
        model.addAttribute("mocks", mocks);
        return "mockList";
    }

    @GetMapping("/configure")
    public String showConfigureForm(Model model) {
        model.addAttribute("mockConfig", new MockConfiguration());
        return "configureMock";
    }

    @PostMapping("/save")
    public String saveMock(@ModelAttribute MockConfiguration mockConfig) {
        mockService.saveMockConfiguration(mockConfig);
        return "redirect:/api/mocks/list";
    }
}
