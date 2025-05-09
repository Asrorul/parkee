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

## CI/CD

This project uses GitHub Actions for continuous integration. The workflow:
- Runs on push to main branch and pull requests
- Sets up Python, Firefox, and required dependencies
- Executes all tests
- Uploads test results and failure screenshots as artifacts

You can view test results in the Actions tab of the GitHub repository.

## Contributing

1. Create a new branch for your changes
2. Make your changes and commit them
3. Push to your branch and create a pull request
4. The GitHub Actions workflow will automatically run tests on your PR

## License

[Your License Here]
