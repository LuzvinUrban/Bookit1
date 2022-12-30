Feature: Add new team API and DB validation


  Scenario: Post new team and verify in database
    Given I logged Bookit api as a "teacher"
    When Users sends POST request to "/api/teams/team" with following info:
      | campus-location | VA        |
      | batch-number    | 26        |
      | team-name       | Legends01 |
    Then status code should be 201
    And Database should persist same team info
    And User deletes previously created team (edited)


    #post Team
  #Store teamID info
  #Get same tam info from database with using ID from API response
  # To get related information you need use Joins'
  #Delete team that we generate


  # Which one is expected ?
  #Expeted --> API
  #Actual --> DB

