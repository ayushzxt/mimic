package com.mock.project.service;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.mock.project.entity.MockConfiguration;
import com.mock.project.repository.MockRepository;

@Service
public class MockService {

    @Autowired
    private MockRepository mockRepository;

    public void saveMockConfiguration(MockConfiguration mockConfig) {
        mockRepository.save(mockConfig);
    }

    public ResponseEntity<Object> getMockResponse(HttpServletRequest request) {
        String path = request.getRequestURI();
        System.out.println(path+"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
        String method = request.getMethod();
        System.out.println(method+"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
        
        MockConfiguration mockConfig = mockRepository.findByRequestPathAndRequestMethod(path, method);

        if (mockConfig != null) {
            return ResponseEntity
                    .status(mockConfig.getResponseStatus())
                    .body(mockConfig.getResponseBody());
        }
        return ResponseEntity.status(404).body("No mock configuration found");
    }

    public List<MockConfiguration> getAllMocks() {
        return mockRepository.findAll();
    }
}

