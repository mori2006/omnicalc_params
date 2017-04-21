class CalculationsController < ApplicationController

  def flex_square_5
    # Parameters: {"num"=>"5"}
    @user_number = params["num"].to_f
    @square = @user_number**2

    render("calculations/flex_square_5.html.erb")
  end

  def flex_square_root_8
    # Parameters: {"num"=>"8"}
    @user_number = params["num"].to_f
    @root = @user_number**(0.5)

    render("calculations/flex_square_root_8.html.erb")
  end

  def flex_payment_410_30_250000
    # Parameters: {"basis_points"=>"410", "number_of_years"=>"30", "present_value"=>"250000"}
    @int = params["basis_points"].to_f/100
    @yr = params["number_of_years"].to_f
    @amount =params["present_value"].to_f

    @payment = ((@int/100/12)*@amount)/(1-(1+(@int/100/12))**(-1*@yr*12))

    render("calculations/flex_payment_410_30_250000.html.erb")
  end


  def square_form

    render("calculations/square_form.html.erb")
  end


  def square
    # Parameters: {"user_number"=>"3"}
    @user_number = params[:user_number].to_f
    @square = @user_number**2

    render("calculations/square.html.erb")

  end


  def square_root_form

    render("calculations/square_root_form.html.erb")
  end


  def square_root
    # Parameters: {"user_number"=>"4"}
    @user_number = params[:user_number].to_f
    @square_root = @user_number**0.5

    render("calculations/square_root.html.erb")

  end

  def payment_form

    render("calculations/payment_form.html.erb")
  end


  def payment
    # Parameters: {"basis_points"=>"410", "number_of_years"=>"30", "present_value"=>"250000"}
    @int = params[:basis_points].to_f
    @yr = params[:number_of_years].to_f
    @amount =params[:present_value].to_f

    @payment = ((@int/100/12)*@amount)/(1-(1+(@int/100/12))**(-1*@yr*12))


    render("calculations/payment.html.erb")

  end

  def random_form

    render("calculations/random_form.html.erb")
  end


  def random
    # Parameters: {"basis_points"=>"410", "number_of_years"=>"30", "present_value"=>"250000"}
    @min = params[:minimum].to_f
    @max = params[:maximum].to_f

    @rand = rand(@min..@max)


    render("calculations/random.html.erb")

  end


end
