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

## Running Tests

By default, tests run in headless mode. To run all tests:
```bash
robot TestCases/receipt.robot
```

To run tests in non-headless mode (useful for debugging):
```bash
robot --variable HEADLESS:False TestCases/receipt.robot
```

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
