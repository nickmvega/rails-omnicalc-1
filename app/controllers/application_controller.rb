class ApplicationController < ActionController::Base
  def home
    render({ template: "layouts/square_form" })
  end

  def square_new
    render({ template: "layouts/square_form" })
  end

  def square_results
    @number = params["number"].to_f
    @square = @number ** 2
    render({ template: "layouts/square_form_results" })
  end

  def square_root_new
    render({ template: "layouts/square_root" })
  end

  def square_root_results
    @user_number = params["user_number"].to_f
    @square_root = @user_number ** 0.5
    render({ template: "layouts/square_root_results" })
  end

  def payment_new
    render({ template: "layouts/payment_form" })
  end

  def payment_results
    apr = params["user_apr"].to_f
    years = params["user_years"].to_i
    principal = params["user_pv"].to_f

    r = apr / 100 / 12
    n = years * 12

    @apr = apr
    @years = years
    @principal = principal
    @payment = r * principal / (1 - (1 + r)**-n)

    render({ template: "layouts/payment_results" })
  end

  def random_new
    render({ template: "layouts/random_form" })
  end

  def random_results
    @min = params["user_min"].to_f
    @max = params["user_max"].to_f
    @random = rand(@min...@max)
    render({ template: "layouts/random_results" })
  end
end
