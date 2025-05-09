# Parkee Receipt Testing

Automated testing suite for Parkee's receipt functionality using Robot Framework.

## Project Structure

```
parkee/
├── TestCases/
│   └── receipt.robot      # Test cases for receipt functionality
├── Resource/
│   └── resource.robot     # Shared resources and keywords
├── requirements.txt       # Python dependencies
└── .github/
    └── workflows/
        └── robot-tests.yml # GitHub Actions workflow
```

## Prerequisites

- Python 3.11 or higher
- Firefox browser
- Git (for version control)

## Setup

1. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   # On Windows
   .\venv\Scripts\activate
   # On Unix or MacOS
   source venv/bin/activate
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Local Setup

1. Install Firefox browser if not already installed
   - Download from [Firefox website](https://www.mozilla.org/firefox/)

2. Install Python 3.11 or higher if not already installed
   - Download from [Python website](https://www.python.org/downloads/)

3. Create and activate a virtual environment:
   ```bash
   # Create virtual environment
   python -m venv venv

   # Activate virtual environment
   # On Windows:
   .\venv\Scripts\activate
   # On Unix or MacOS:
   source venv/bin/activate
   ```

4. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Running Tests Locally

1. Run tests in headless mode (default):
   ```bash
   robot TestCases/receipt.robot
   ```

2. Run tests in non-headless mode (for debugging):
   ```bash
   robot --variable HEADLESS:False TestCases/receipt.robot
   ```

3. Run tests with different parameters:
   ```bash
   robot --variable LOCATION_ID:06R --variable PARKING_SLIP:06R4OL0DACB0 TestCases/receipt.robot
   ```

4. View test reports:
   - `log.html`: Detailed test execution log
   - `report.html`: Test results summary
   - Screenshots (if tests fail) will be saved in the project root

## Test Reports

After running tests, Robot Framework generates the following reports:
- `log.html`: Detailed test execution log
- `report.html`: Test results summary
- `output.xml`: Machine-readable results data

Screenshots are automatically captured on test failures.

## Running Tests with GitHub Actions

You can run the tests using GitHub Actions in two ways:

### Method 1: Automatic Run

Tests will run automatically when you:
1. Push code to the main branch
2. Create or update a pull request

### Method 2: Manual Run

1. Go to your repository on GitHub
2. Click the "Actions" tab
3. Click "Robot Framework Tests" in the left sidebar
4. Click the "Run workflow" button (blue button)
5. You can optionally set:
   - Location ID (default: 06R)
   - Parking slip number (default: 06R4OL0DACB0)
6. Click the green "Run workflow" button

### View Test Results

After the workflow completes:
1. Click on the completed workflow run
2. Scroll down to "Artifacts"
3. Download the `robot-test-results` zip file
4. Extract and open `report.html` to view the results

