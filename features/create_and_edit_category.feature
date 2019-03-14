Feature: create and edit Categories
  
  As a blog administrator
  In order to properly organize articles
  I want to be able to create and edit categories

Background: categories to be edited and created

Scenario: An admin should be able to create categories
  Given the blog is set up
  And I am logged into the admin panel
  And I follow "Categories"
  And I fill in "category_name" with "Education"
  And I fill in "category_keywords" with "education bachelor"
  And I fill in "category_permalink" with "education_link"
  And I fill in "category_description" with "Education Articles"
  And I press "Save"
  Then I should see "Category was successfully saved"
  And I should see "Education"
  And I should see "education bachelor"
  And I should see "education_link"
  And I should see "Education Articles"

Scenario: An admin should be able to edit categories
  Given the blog is set up
  And I am logged into the admin panel
  And I follow "Categories"
  And I follow "General"
  And I fill in "category_name" with "Web"
  And I fill in "category_keywords" with "web design"
  And I fill in "category_permalink" with "web_link"
  And I fill in "category_description" with "Web Articles"
  And I press "Save"
  Then I should see "Category was successfully saved"
  And I should see "Web"
  And I should see "web design"
  And I should see "web_link"
  And I should see "Web Articles"