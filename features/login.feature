@Login
Feature: Login to Revo

@Login
Scenario: Validate empty login and password fields
Given open Revoup page
Then click to Login button
Then validate empty fields
