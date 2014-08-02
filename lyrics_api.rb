require "sinatra"
require "sinatra/activerecord"

get "/lyrics" do
  if !params[:artist] || !params[:song]
    return status 422
  end

  status 404
end
