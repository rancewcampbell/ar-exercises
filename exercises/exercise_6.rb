require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_associated :store
  validates :hourly_rate, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 40, 
    less_than_or_equal_to: 200
  }
end

@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 60)
@store1.employees.create(first_name: "Rance", last_name: "Campbell", hourly_rate: 60)
@store1.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 60)
@store1.employees.create(first_name: "Peter", last_name: "Quill", hourly_rate: 60)
@store1.employees.create(first_name: "Luke", last_name: "Skywalker", hourly_rate: 60)
@store2.employees.create(first_name: "Clark", last_name: "Kent", hourly_rate: 60)
@store2.employees.create(first_name: "Beth", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Rick", last_name: "Sanchez", hourly_rate: 60)
@store2.employees.create(first_name: "Morty", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Ron", last_name: "Swanson", hourly_rate: 60)