# AppStoreAnalytics
SwiftUI-based iOS app that simulates an App Store Analytics dashboard. It fetches analytic metrics (such as downloads, active users, etc.) from a REST API endpoint and displays them in a list. For the app only uses test data, but the functionallity can be extended easily by 
 using realtime data and building graphs, tables and other metric visualizations. The project is built to show:

- **iOS Client Development:** Modern Swift and SwiftUI usage, networking with URLSession, and error handling.
- **Backend Integration:** Communication with a REST API (which you can simulate or point to a test server).
Test Automation:
- **Charles Proxy:** Configured Charles Proxy to monitor HTTPS network traffic, aiding in debugging and data quality verification.
- **Unit Tests:** Validating JSON decoding and model integrity.
- **UI Tests:** Ensuring the dashboard loads and displays data correctly.
- **REST API Tests:** A Python script to test API endpoints (demonstrating multi-language automation skills).
- **CI/CD:** Automated build, test, and deployment pipeline using GitHub Actions. Ensures code quality with unit, UI, and API tests while streamlining integration and delivery.


## Getting Started

To get a local copy up and running, follow these steps:

### Prerequisites

- Python 3.x
- Xcode (for iOS development)
- Git

### Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/Simar710/AppStoreAnalyticsQA.git
   ```
   
2. **Open the project in xcode to Build and Run the project:** 
   - Press `⌘ + B` to build and `⌘ + R` to run the project.

3. **Navigate to the Scripts Directory to run api backend tests:**
   
    ```bash
    cd AppStoreAnalyticsQA/Scripts
    ```
4. **Run the python script:**

   ```bash
   python3 api_test.py
   ```
