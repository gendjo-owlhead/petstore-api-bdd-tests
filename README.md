# Petstore API BDD Tests

This project contains Behavior-Driven Development (BDD) tests for the Petstore API using Cucumber.js and TypeScript.

## Features

- Automated API testing using Cucumber.js
- TypeScript support for type safety
- Detailed HTML test reports
- REST API testing with Axios
- BDD-style test scenarios

## Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd petstore-api-bdd-tests
```

2. Install dependencies:
```bash
npm install
```

## Running Tests

Run the tests with HTML report generation:
```bash
npm test
```

## Test Reports

After running the tests, a detailed HTML report will be generated in the `reports` directory:
- `reports/cucumber-report.html` - Detailed HTML report with test results
- `reports/cucumber-report.json` - Raw JSON test results

## Project Structure

```
.
├── features/                    # Cucumber feature files
│   ├── petstore.feature        # Feature definitions
│   └── step_definitions/       # Step definitions
│       └── petstore.steps.ts   # TypeScript step implementations
├── reports/                    # Generated test reports
├── package.json                # Project dependencies and scripts
├── tsconfig.json              # TypeScript configuration
└── reporter.js                # HTML report configuration
```

## API Documentation

The tests are written against the Petstore API. For more information about the API, visit:
https://petstore.swagger.io/

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request 