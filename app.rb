require "sinatra"
require "sinatra/reloader"

get("/howdy") do
erb(:hello)
end

get("/results") do
  erb(:results)
end

get("/square/results") do
  erb(:square_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  
end

get("/square/new") do

  erb(:square)
end

get("square-root/new") do


end

get("random/new") do

end


get("/payment/new") do

end
