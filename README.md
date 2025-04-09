# Petstore API BDD Tests

This project contains BDD tests for the Petstore API using Cucumber.js with TypeScript.

## Prerequisites

- Node.js (v14 or higher)
- npm (comes with Node.js)

## Installation

1. Clone this repository
2. Install dependencies:
```bash
npm install
```

## Running Tests

To run the tests with progress bar output:
```bash
npm test
```

To run the tests with JSON report generation:
```bash
npm run test:report
```

The JSON report will be generated in the `reports` directory.

## Project Structure

- `features/`: Contains feature files with Gherkin scenarios
- `features/step_definitions/`: Contains step definitions implementing the test logic
- `reports/`: Contains generated test reports (created after running tests with reporting) 