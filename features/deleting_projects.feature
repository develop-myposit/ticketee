Feature: Deleting projects
  In order to delete a  project
  As a user
  I want to be make then disappear

Scenario: Deleting a project
  Given there is a project called "TextMate 2"
  And I am on the homepage
  When I follow "TextMate 2"
  And I follow "Delete Project"
  Then I should see "Project has been deleted"
  Then I should not see "TextMate 2"
