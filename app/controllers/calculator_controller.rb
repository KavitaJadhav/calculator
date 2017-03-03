class CalculatorController < ApplicationController
  def index
    @num1 = @num2 = nil
  end

  def calculate
    @result = 0
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    if params[:commit] == 'Add'
      add
    elsif params[:commit] == 'Sub'
      subtract
    end
  end

  private
  def subtract
    @result = @num1 - @num2
  end

  def add
    @result = @num1 + @num2
  end
end
