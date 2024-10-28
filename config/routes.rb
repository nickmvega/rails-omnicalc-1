Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "home"})
  get("/square/new", { :controller => "application", :action => "square_new"})
  get("/square/results", { :controller => "application", :action => "square_results"})
  get("/square_root/new", { :controller => "application", :action => "square_root_new"})
  get("/square_root/results", { :controller => "application", :action => "square_root_results"})
  get("/payment/new", { :controller => "application", :action => "payment_new"})
  get("/payment/results", { :controller => "application", :action => "payment_results"})
  get("/random/new", { :controller => "application", :action => "random_new"})
  get("/random/results", { :controller => "application", :action => "random_results"})
end
