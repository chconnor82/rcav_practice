class CalculationsController < ApplicationController
  def home
    @sqrt_number = 9
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
    # @interest_rate = params[:interest_rate].to_i
    # @number_of_payments = params[:number_of_payments].to_i
    # @present_value = params[:present_value].to_i
    # rate12 = @interest_rate.to_i/100/12
    # numerator = @present_value.to_i*rate12.to_f
    # denomenator = 1-(1+rate12.to_f)**-@number_of_payments.to_f
    # @payment = numerator/denomenator
    # @payment = "#{pmt(@interest_rate,@number_of_payments,@present_value)}"
    rate = params[:interest_rate].to_f/100
    nper = params[:number_of_payments].to_f
    pv = params[:present_value].to_f

    # Formula from http://en.wikipedia.org/wiki/Mortgage_calculator
    @payment = (rate * pv) / (1 - (1 + rate)**-nper).round(2)
  end
end

  #   def pmt
  # @monthly_interest_rate = (@interest_rate / 100 / 12)
  # ((@monthly_interest_rate * @principal_value_of_loan) / (1 - (1 + @monthly_interest_rate) ** (-@number_of_years * 12))).round(2)

  # @monthly_payment = loan_payment(6.5, 30, 200000)

  # @payment = "#{@monthly_payment}"
    # end



# (@interest_rate, @number_of_years, @principal_value_of_loan)
