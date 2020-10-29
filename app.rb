require 'sinatra'
require 'date'

get '/' do
  erb(:index)
end


post "/celebrate" do
@user_name = params[:user_name]
@user_bday = params[:user_bday]
@date = Time.now.strftime("%d %B")
@date = Date.parse(@date)
@user_bday = Date.parse(@user_bday)
@days_left = (@date-@user_bday).to_i
if @days_left < 0
  @days_left = @days_left * -1
end

erb(:celebrate)

end


set :session_secret, 'super secret'
