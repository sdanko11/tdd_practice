require 'rspec'
require 'pry'
require_relative 'load_data_class'
require_relative 'employee_class'


describe Employee do
  it 'employee should have a first name' do
    #create some objects with data
    employee = Employee.new({"first_name" => "Steve"})

    #verify the correct behavior (data comes out correctly)
    expect(employee.first_name).to eql("Steve")
  end

  it 'should default to "[first name]" if first name not provided' do
    employee = Employee.new({})
    expect(employee.first_name).to eql("[first name]")
  end

  it 'should shout their full name' do
    employee = Employee.new({"first_name" => "Jason", "last_name" => "Zopf"})

    expect(employee.shout_name).to eql("JASON ZOPF")
  end
end

