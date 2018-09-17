Feature: Demo Karate against Actions

  Background:
    * url baseUrl + '/action'
    * def result = callonce read('setup.feature')
    * def id = $result.response.id

  Scenario: Verify that an action can be retrieved
    And path id
    When method get
    Then status 200

  Scenario: Verify that an action can be deleted
    Given path id
    When method delete
    Then status 200

  Scenario: Verify that an action can be created and retrieved
    Given param verb = 'TAG'
    And param objectType = 'COMMENT'
    And param objectUri = 'https://yahoo.com'
    Given request ''
    When method post
    Then status 200
    And match response == { id: '#notnull', createDate: '#notnull', objectUri: 'https://yahoo.com', objectType: 'COMMENT', verb: 'TAG'}

    Given path response.id
    When method get
    Then status 200