#enconding: utf-8
@visit_search
Feature: Search Car

   As a client
   In order to search cars
   I want to seen the list

   @search
   Scenario: Cars From 2015
      When I filter to first registration
      Then I should be at a list of cars
      And I see the list of car sorted by manufactured date

   @doing
   Scenario: Sort Car by Price Descending
      When I want to filter by Price Descending
      Then I see the list of car sort by price descending
