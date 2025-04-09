const reporter = require('cucumber-html-reporter');

const options = {
  theme: 'bootstrap',
  jsonFile: 'reports/cucumber-report.json',
  output: 'reports/cucumber-report.html',
  reportSuiteAsScenarios: true,
  scenarioTimestamp: true,
  launchReport: true,
  metadata: {
    "App Version": "1.0.0",
    "Test Environment": "Petstore API",
    "Browser": "N/A",
    "Platform": "Node.js",
    "Parallel": "Scenarios",
    "Executed": "Remote"
  }
};

reporter.generate(options); 