require 'pry'
require_relative 'load_data_class'
require_relative 'employee_class'
require_relative 'calculate_tax_class'


company = LoadData.new
company.load_employees
company.all_persons.each do |person|
  if person.tax_calculation > 0
    puts "#{person.first_name} #{person.last_name} has a tax liability of #{person.tax_calculation}"
  else
    puts "#{person.first_name} #{person.last_name} will recieve a refund of #{person.tax_calculation * -1}"
end
end
