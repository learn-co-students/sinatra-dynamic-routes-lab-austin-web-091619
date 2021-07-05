require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  @user = params[:name]
  "#{@user.reverse}"
  end

  get '/square/:number' do
    @sqrn = params[:number].to_i
    "#{(@sqrn**2).to_s}"

  end 

  # get '/say/:number/:phrase' do
  #   @num = params[:number].to_i
  #   @p = params[:phrase]
  #   @num.times{puts "#{@p}"}
  # end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
   "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do

  end
end