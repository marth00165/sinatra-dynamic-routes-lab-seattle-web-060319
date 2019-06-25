require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    type = params[:operation]
    if type == "add"
    operation = params[:number1].to_i + params[:number2].to_i
    "#{operation}"
  elsif type == "subtract"
    operation = params[:number1].to_i - params[:number2].to_i
    "#{operation}"
  elsif type == "multiply"
    operation = params[:number1].to_i * params[:number2].to_i
    "#{operation}"
  elsif type == "divide"
    operation = params[:number1].to_i / params[:number2].to_i
    "#{operation}"
    end
  end


end
