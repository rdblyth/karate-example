@ignore
Feature: re-usable feature to create a single action

  Scenario:
    Given url baseUrl + '/action'
    Given param verb = 'TAG'
    And param objectType = 'COMMENT'
    And param objectUri = 'https://yahoo.com'
    Given request ''
    When method post
    Then status 200
    And match response == { id: '#notnull', createDate: '#notnull', objectUri: 'https://yahoo.com', objectType: 'COMMENT', verb: 'TAG'}
