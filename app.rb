require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}!"
  end
  
  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end
  
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
end