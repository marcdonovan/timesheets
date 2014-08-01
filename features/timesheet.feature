Feature: Everybody loves to fill out timesheets!

  Every Friday, when we have better things to do, our boss tells us we have to stop coding and fill out the stupid
  timesheets so that the Finance people don't yell. This system is designed to automate that so that everyone
  is happy-happy.

  Scenario: Enter regular timesheet
	Given I navigate to the Oracle Login
	And I enter my user id
	And I enter my password
	And I click login
	Then The screen should say "Welcome!"
	When I follow "ORACLE R12 - HR & Payroll"
	And I wait and follow "PHRP US Employee Self Service"
	And I follow "Time and Labor"
	And I follow "Time"
	And I follow "Create Timecard"
	Then The screen should say "Time Entry"
	When I enter my hours
	And I enter my project
	And I enter my task
	And I enter my type
	And I click Continue
	And I click Submit
	Then The screen should say "submitted successfully"

