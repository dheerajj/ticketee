Feature: Signing in
	In order to user this site
	As a user
	I want to be able to sign in
	
	Scenario: Signing in via confirmation
		Given there are the following users:
		| email						| password	| unconfirmed |
		| dheeraj@mobiporter.com	| password  | true 		  |
		And "dheeraj@mobiporter.com" opens the email with subject "Confirmation instructions"
		And they click the first link in the email
		Then I should see "Your account was successfully confirmed"
		And I should see "Signed in as dheeraj@mobiporter.com"

	Scenario: Signing in via form
		Given there are the following users:
		| email						| password	|
		| dheeraj@mobiporter.com	| password  |
		And I am signed in as them
		
	