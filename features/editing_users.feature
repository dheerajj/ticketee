Feature: Editing a user
	In order to change a user's details
	As an admin
	I want to be able to modify them through the backend

	Background:
		Given there are the following users:
		| email 				| password | admin	|
		| admin@mobiporter.com 	| password | true 	|
		And I am signed in as them
		
		Given there are the following users:
		| email 				| password |
		| user@mobiporter.com 	| password |
		Given I am on the homepage
		When I follow "Admin"
		And I follow "Users"
		And I follow "user@mobiporter.com"
		And I follow "Edit User"	
	
	Scenario: Updating a user's details
		When I fill in "Email" with "newguy@mobiporter.com"
		And I press "Update User"
		Then I should see "User has been updated."
		And I should see "newguy@mobiporter.com"
		And I should not see "user@mobiporter.com"

	Scenario: Toggling a user's admin ability
		When I check "Is an admin?"
		And I press "Update User"
		Then I should see "User has been updated."
		And I should see "user@mobiporter.com (Admin)"
		
	Scenario: Updating with an invalid email fails
		When I fill in "Email" with "fakefakefake"
		And I press "Update User"
		Then I should see "User has not been updated."
		And I should see "Email is invalid"