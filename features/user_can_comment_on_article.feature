Feature: User can comment on an article

    As a user 
    In order to share my views 
    I would like to be able to post comments about an article

    Background: Given the following articles exist
         | title                | content                          |
         | A breaking news item | Some really breaking action      |
         | Learn Rails 5        | Build awesome rails applications |

        #And I visit the site
        
    Scenario: User submits a comment
    Given I am reading the article titled "A breaking news item"
    And I fill in a "Comment" with "This is my opinion" 
    And I fill in "Your name" with "Nici"
    And I click "Send comment"
    Then I should see "This is my opinion"
    And I should see "Nici commented on ...date"
    But when I am reading the article titled "Learn Rails 5"
    Then I should not see "This is my opinion"
    And I should not see "Nici commented on ...date"

