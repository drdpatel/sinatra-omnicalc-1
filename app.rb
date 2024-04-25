require "sinatra"
require "sinatra/reloader"

get("/howdy") do
erb(:hello)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  
end

get("/results") do
  erb(:results)
end

get("/square/new") do
    erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("square_with_form").to_f
  @the_result = params.fetch("square_with_form").to_f ** 2
  erb(:square_results)
end





get("square-root/new") do


end

get("random/new") do

end


get("/payment/new") do

end
