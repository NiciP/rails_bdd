
Feature: Create articles
    As a publisher
    In order to add relevant content to my news service 
    I would like to be able to create articles

Background:
    Given I visit the "landing" page
    When I click the "New Article" link

Scenario: Create a new article (Happy Path)
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"


