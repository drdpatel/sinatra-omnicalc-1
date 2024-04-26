require "sinatra"
require "sinatra/reloader"

get("/howdy") do
erb(:hello)
end

get("/") do
  erb(:square)
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


get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("square_root_with_form").to_f
  @the_result_1 = params.fetch("square_root_with_form").to_f
  @the_result = Math.sqrt(@the_result_1)
  erb(:square_root_results)
end


get("random/new") do

end


get("/payment/new") do

end
