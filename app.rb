require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number]
    (@number.to_i * @number.to_i).to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4] 
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      (@number1.to_i + @number2.to_i).to_s
    elsif @operation == "subtract"
      (@number1.to_i - @number2.to_i).to_s
    elsif @operation == "multiply"
      (@number1.to_i * @number2.to_i).to_s
    elsif @operation == "divide"
      (@number1.to_i / @number2.to_i).to_s
    else
      "error"
    end
  end

end

# Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.

# Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. 
# Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).

# Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.

# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).

# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.