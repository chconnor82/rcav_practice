class CalculationsController < ApplicationController
  def home
    @the_number = 9
    @interest_rate = 4
    @number_of_payments = 360
    @present_value = 260000
  end

  def sqrt
    @sqrt_number = params[:number].to_i
    @sqrt_number = Math.sqrt(@sqrt_number)
  end

  def sqr
    @sqrt_number = params[:number].to_i
    @answer = sqrt_number**2
  end

  def pmt
    @interest_rate = params[:interest_rate].to_i
    @number_of_payments = params[:number_of_payments].to_i
    rate12 = interest_rate.to_f/100/12
    numerator = present_value*rate12
    denomenator = 1-(1+rate12)**-@number_of_payments
    pmt = numerator/dem
    @payment ="#{pmt(@interest_rate, @number_of_payments, @present_value)}"

  end
end
