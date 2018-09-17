@ignore
Feature: re-usable feature to create a single action

  Scenario:
    Given url 'http://localhost:9000/action?verb=TAG&objectType=COMMENT&objectUri=https://yahoo.com'
    Given request ''
    When method post
    Then status 200
    And match response == { id: '#notnull', createDate: '#notnull', objectUri: 'https://yahoo.com', objectType: 'COMMENT', verb: 'TAG'}
