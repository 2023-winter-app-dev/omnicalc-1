Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "square" })

  get("/square/new", { :controller => "application", :action => "square" })
  get("/square/results", { :controller => "application", :action => "square_result" })

  get("/square_root/new", { :controller => "application", :action => "square_root" })
  get("/square_root/results", { :controller => "application", :action => "square_root_result" })

  get("/payment/new", { :controller => "application", :action => "payment" })
  get("/payment/results", { :controller => "application", :action => "payment_result" })

  get("/random/new", { :controller => "application", :action => "random" })
  get("/random/results", { :controller => "application", :action => "random_result" })
end
