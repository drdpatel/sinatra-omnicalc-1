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
  erb(:random)
end

get("/random/results") do
  @the_num_min = params.fetch("min_input").to_f
  @the_num_max = params.fetch("max_input").to_f
  @the_result = random(@the_num_min..@the_num_max)
  erb(:random_results)
end

get("/payment/new") do
erb(:payment)
end
