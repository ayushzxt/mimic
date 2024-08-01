package com.mock.project.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class MockConfiguration {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String requestPath;
    private String requestMethod;
    private int responseStatus;
    @Column(length = 1000)
    private String responseBody;
    @Column(length = 1000)
    private String requestBody;
    private String requestHeaders;
    private String queryParams;
    
    
	public MockConfiguration() {
		super();
	}
	
	


	
	public MockConfiguration(String requestPath, String requestMethod, int responseStatus, String responseBody,
			String requestBody, String requestHeaders, String queryParams) {
		super();
		this.requestPath = requestPath;
		this.requestMethod = requestMethod;
		this.responseStatus = responseStatus;
		this.responseBody = responseBody;
		this.requestBody = requestBody;
		this.requestHeaders = requestHeaders;
		this.queryParams = queryParams;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getRequestPath() {
		return requestPath;
	}


	public void setRequestPath(String requestPath) {
		this.requestPath = requestPath;
	}


	public String getRequestMethod() {
		return requestMethod;
	}


	public void setRequestMethod(String requestMethod) {
		this.requestMethod = requestMethod;
	}


	public int getResponseStatus() {
		return responseStatus;
	}


	public void setResponseStatus(int responseStatus) {
		this.responseStatus = responseStatus;
	}


	public String getResponseBody() {
		return responseBody;
	}


	public void setResponseBody(String responseBody) {
		this.responseBody = responseBody;
	}


	public String getRequestBody() {
		return requestBody;
	}


	public void setRequestBody(String requestBody) {
		this.requestBody = requestBody;
	}


	public String getRequestHeaders() {
		return requestHeaders;
	}


	public void setRequestHeaders(String requestHeaders) {
		this.requestHeaders = requestHeaders;
	}


	public String getQueryParams() {
		return queryParams;
	}


	public void setQueryParams(String queryParams) {
		this.queryParams = queryParams;
	}
	
	

    // Getters and Setters
    
}



