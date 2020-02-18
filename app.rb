require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get "/reversename/:name" do
      @name = params[:name]
      @name.reverse
    end

    get "/square/:number" do
      @num = params[:number].to_i ** 2
      @num.to_s
    end

    get "/say/:number/:phrase" do
      sentence = ""
      params[:number].to_i.times do
        sentence += params[:phrase]
      end
      sentence
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1].to_s
      @word2 = params[:word2].to_s
      @word3 = params[:word3].to_s
      @word4 = params[:word4].to_s
      @word5 = params[:word5].to_s
      a = "."
      return @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + a
    end

    get "/:operation/:number1/:number2" do
      number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    total = ""

    case params[:operation]
    when 'add'
      total = (number1 + number2).to_s
    when 'subtract'
      total = (number1 - number2).to_s
    when 'multiply'
      total = (number1 * number2).to_s
    when 'divide'
      total = (number1 / number2).to_s
    end
  end
end