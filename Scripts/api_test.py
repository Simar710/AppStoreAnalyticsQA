#
#  api_test.py
#  AppStoreAnalyticsQA

import requests

def test_fetch_analytics():
    url = "https://jsonplaceholder.typicode.com/todos"  # Use your test endpoint here
    response = requests.get(url)
    
    assert response.status_code == 200, f"Expected 200 OK, got {response.status_code}"
    
    data = response.json()
    assert isinstance(data, list), "Expected data to be a list"
    if data:
        sample = data[0]
        assert "id" in sample, "Missing 'id' in analytics data"
        assert "title" in sample, "Missing 'title' in analytics data"
        assert "completed" in sample, "Missing 'completed' in analytics data"
    
    print("API Test Passed")

if __name__ == "__main__":
    test_fetch_analytics()
