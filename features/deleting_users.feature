Feature: Deleting users
	In order to remove user
	As an admin
	I want to click a button and delete them
	
	Background:
		Given there are the following users:
			| email						| password 	| admin |
			| admin@mobiporter.com		| password 	| true	|
			| user@mobiporter.com		| password 	| false	|			
		And I am signed in as "admin@mobiporter.com"
		Given I am on the homepage
		When I follow "Admin"
		And I follow "Users"

	Scenario: Deleting a user
		And I follow "user@mobiporter.com"
		When I follow "Delete User"
		Then I should see "User has been deleted."
		
	Scenario: Userscannot delete themselves
		When I follow "admin@mobiporter.com"
		And I follow "Delete User"
		Then I should see "You cannot delete yourself!"