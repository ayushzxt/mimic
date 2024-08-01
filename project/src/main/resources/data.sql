
INSERT INTO mock_configuration (request_path, request_method, response_status, response_body, request_body, request_headers, query_params) VALUES
('/api/mocks/hello', 'GET', 200, '{"message": "Hello, World!"}', NULL, NULL, NULL),
('/api/mocks/greet', 'POST', 201, '{"message": "Greeting received!"}', '{"name": "John"}', 'Content-Type: application/json', NULL),
('/api/mocks/status', 'GET', 204, NULL, NULL, NULL, NULL),
('/api/mocks/error', 'GET', 500, '{"error": "Internal Server Error"}', NULL, NULL, NULL),
('/api/mocks/info', 'GET', 200, '{"info": "Sample info"}', NULL, NULL, 'param1=value1&param2=value2');
