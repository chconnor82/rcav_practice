class CalculationsController < ApplicationController
  def home
    @the_number = 9
    @interest_rate = 4
    @number_of_payments = 360
    @present_value = 260000
  end

  def sqrt
    @sqrt_number = params[:number].to_i
    @answer = Math.sqrt(@sqrt_number).to_i
  end

  def sqr
    @sqrt_number = params[:number].to_i
    @answer = @sqrt_number**2
  end

  def pmt
    @interest_rate = params[:interest_rate].to_f
    @number_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f
    rate12 = @interest_rate/100/12
    numerator = @present_value.to_f*rate12.to_f
    denomenator = 1-(1+rate12.to_f)**-@number_of_payments.to_f
    pmt = numerator/denomenator
    @payment = "#{pmt(@interest_rate,@number_of_payments,@present_value)}"
  end

  #   def pmt
  # @monthly_interest_rate = (@interest_rate / 100 / 12)
  # ((@monthly_interest_rate * @principal_value_of_loan) / (1 - (1 + @monthly_interest_rate) ** (-@number_of_years * 12))).round(2)

  # @monthly_payment = loan_payment(6.5, 30, 200000)

  # @payment = "#{@monthly_payment}"
    # end

end

# (@interest_rate, @number_of_years, @principal_value_of_loan)
