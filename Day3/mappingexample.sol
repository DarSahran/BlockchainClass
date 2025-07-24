// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeManagement {

struct Employee {
string name;
address employeeAddress;
uint256 salary;
}

struct PerformanceReview {
string review;
uint8 rating; // Rating out of 5
}

// Mapping of employee ID to employee details
mapping(uint => Employee) public employees;

// Nested mapping for employee performance reviews: employee ID => year => review details
mapping(uint => mapping(uint => PerformanceReview)) public performanceReviews;

// Function to add an employee
function addEmployee(uint employeeId, string memory name, address employeeAddress, uint256 salary) public {
employees[employeeId] = Employee(name, employeeAddress, salary);
}

// Function to add a performance review
function addPerformanceReview(uint employeeId, uint year, string memory review, uint8 rating) public {
performanceReviews[employeeId][year] = PerformanceReview(review, rating);
}

// Function to get an employee's performance review for a specific year
function getPerformanceReview(uint employeeId, uint year) public view returns (string memory, uint8) {
PerformanceReview memory review = performanceReviews[employeeId][year];
return (review.review, review.rating);
}
}