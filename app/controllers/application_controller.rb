class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "/homepage.html.erb" })
  end

  def square
    render({ :template => "/computations/square.html.erb" })
  end

  def square_result
    @number = params["square_input"].to_i
    @number_squared = params["square_input"].to_f ** 2
    render({ :template => "/results/square.html.erb" })
  end

  def square_root
    render({ :template => "/computations/square_root.html.erb" })
  end

  def square_root_result
    @number = params["square_root_input"].to_i
    @number_rooted = params["square_root_input"].to_f ** 0.5
    render({ :template => "/results/square_root.html.erb" })
  end

  def payment
    render({ :template => "/computations/payment.html.erb" })
  end

  def payment_result
    @apr = params["apr_input"].to_f / 100
    @nyears = params["nyears_input"].to_i
    @principal = params["principal_input"].to_f
    @payment = ((@apr / 12) * (@principal)) / (1 - (1 + (@apr / 12)) ** (-12 * @nyears))
    render({ :template => "/results/payment.html.erb" })
  end

  def random
    render({ :template => "/computations/random.html.erb" })
  end

  def random_result
    @min = params["min_input"].to_f
    @max = params["max_input"].to_f
    @random_number = rand(@min..@max)
    render({ :template => "/results/random.html.erb" })
  end
end
