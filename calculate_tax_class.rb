class CalculateTax

  def initialize(person)
    @employee = person
    @tax_amount = 0
  end

  def tax_liability
    (@employee.annual_income * (@employee.tax_rate.to_f / 100)).to_i
  end

  def amount_due
    # binding.pry
    # tax_liability > @employee.tax_paid
      tax_liability - @employee.tax_paid
    # elsif tax_liability < @employee.tax_paid
    #   @employee.tax_paid - tax_liability
    # end
  end
end