package com.mock.project.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.mock.project.entity.MockConfiguration;

public interface MockRepository extends JpaRepository<MockConfiguration, Long> {
    MockConfiguration findByRequestPathAndRequestMethod(String requestPath, String requestMethod);
}


