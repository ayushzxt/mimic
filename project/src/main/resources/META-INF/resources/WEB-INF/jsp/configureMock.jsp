<!DOCTYPE html>
<html>
<head>
    <title>Configure Mock</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #b2ebf2); /* Soft gradient background */
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background: #ffffff; /* Solid white background for the container */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            background: linear-gradient(to right, #ffffff, #f1f1f1); /* Subtle gradient background for the form */
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 15px 0 5px;
            font-weight: bold;
            color: #333;
            display: block;
        }
        input[type="text"], input[type="number"], select, textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            margin-bottom: 20px;
            background: #fafafa; /* Light background for input fields */
            transition: background 0.3s ease;
        }
        input[type="text"]:focus, input[type="number"]:focus, select:focus, textarea:focus {
            background: #ffffff; /* Change background on focus */
            border-color: #007bff;
        }
        textarea {
            resize: vertical;
            min-height: 120px;
        }
        .field-group {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .field-group > div {
            flex: 1;
            min-width: 0;
        }
        .response-body, .request-body {
            flex: 1;
            min-width: 0;
        }
        .response-body {
            margin-right: 20px;
        }
        .side-by-side {
            display: flex;
            gap: 20px;
        }
        .side-by-side > div {
            flex: 1;
            min-width: 0;
        }
        .buttons {
            text-align: center;
            margin-top: 20px;
        }
        button {
            padding: 12px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>API Mock Configuration</h1>
        <form action="/api/mocks/save" method="post">
            <label>Request Path</label>
            <input type="text" name="requestPath" placeholder="/api/endpoint" required />

            <div class="side-by-side">
                <div>
                    <label>Request Method</label>
                    <select name="requestMethod">
                        <option value="GET">GET</option>
                        <option value="POST">POST</option>
                        <option value="PUT">PUT</option>
                        <option value="DELETE">DELETE</option>
                    </select>
                </div>
                <div>
                    <label>Response Status</label>
                    <input type="number" name="responseStatus" placeholder="200" required />
                </div>
            </div>

            <div class="field-group">
                <div class="response-body">
                    <label>Response Body</label>
                    <textarea name="responseBody" placeholder="{ \"message\": \"Success\" }" required></textarea>
                </div>
                <div class="request-body">
                    <label>Request Body</label>
                    <textarea name="requestBody" placeholder="{ \"name\": \"John\" }"></textarea>
                </div>
            </div>

            <label>Request Headers</label>
            <textarea name="requestHeaders" placeholder="Content-Type: application/json"></textarea>

            <label>Query Params</label>
            <textarea name="queryParams" placeholder="id=123&sort=asc"></textarea>

            <div class="buttons">
                <button type="submit">Save Mock</button>
            </div>
        </form>
    </div>
</body>
</html>
