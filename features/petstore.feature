Feature: Petstore API Testing

  Background:
    Given the Petstore API is available

  Scenario: Add a new pet to the store
    When I send a POST request to "/pet" with the following body:
      """
      {
        "id": 12345,
        "name": "Fluffy",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    And the response body should contain:
      | id     | 12345     |
      | name   | Fluffy    |
      | status | available |

  Scenario: Find pet by ID
    When I send a POST request to "/pet" with the following body:
      """
      {
        "id": 12346,
        "name": "Fluffy2",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    When I send a GET request to "/pet/12346"
    Then the response code should be 200
    And the response body should contain:
      | id     | 12346     |
      | name   | Fluffy2   |
      | status | available |

  Scenario: Find non-existent pet by ID
    When I send a GET request to "/pet/999999"
    Then the response code should be 404
    And the response should indicate "Pet not found"

  Scenario: Update an existing pet
    When I send a POST request to "/pet" with the following body:
      """
      {
        "id": 12347,
        "name": "Fluffy3",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    When I send a PUT request to "/pet" with the following body:
      """
      {
        "id": 12347,
        "name": "FluffyUpdated",
        "photoUrls": ["http://example.com/photo1"],
        "status": "sold"
      }
      """
    Then the response code should be 200
    And the response body should contain:
      | id     | 12347         |
      | name   | FluffyUpdated |
      | status | sold          |

  Scenario: Create new pet with PUT
    When I send a PUT request to "/pet" with the following body:
      """
      {
        "id": 999999,
        "name": "NonExistent",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    And the response body should contain:
      | id     | 999999      |
      | name   | NonExistent |
      | status | available   |

  Scenario: Delete an existing pet
    When I send a POST request to "/pet" with the following body:
      """
      {
        "id": 12348,
        "name": "Fluffy4",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    When I send a DELETE request to "/pet/12348"
    Then the response code should be 200

  Scenario: Delete non-existent pet
    When I send a DELETE request to "/pet/888888"
    Then the response code should be 404
    And the response should indicate "Pet not found"

  Scenario: Find pets by status
    When I send a POST request to "/pet" with the following body:
      """
      {
        "id": 12349,
        "name": "Fluffy5",
        "photoUrls": ["http://example.com/photo1"],
        "status": "available"
      }
      """
    Then the response code should be 200
    When I send a GET request to "/pet/findByStatus?status=available"
    Then the response code should be 200
    And the response should contain a list of pets with status "available"

  Scenario: Find pets by invalid status
    When I send a GET request to "/pet/findByStatus?status=invalid"
    Then the response code should be 200
    And the response should be an empty array 