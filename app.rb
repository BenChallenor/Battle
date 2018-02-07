require "sinatra/base"

class Battle < Sinatra::Base

  get '/' do
    'Battle!'
    erb(:index)
  end


  post "/names" do
    erb(:play)
  end

  run! if app_file == $0

end
