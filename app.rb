require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do
   @name= params[:name].reverse
  end

  get '/square/:number' do
    @result= params[:number].to_i* params[:number].to_i
    "#{@result}".to_s
  end

  get '/say/:number/:phrase' do
    @num= params[:number].to_i
    @phrase= params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1= params[:word1]
    @w2= params[:word2]
    @w3= params[:word3]
    @w4= params[:word4]
    @w5= params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    # @number1= params[:number1].to_i
    # @number2=params[:number2].to_i
    # # @operation= params[:operation]
    # case params[:operation]
    # when 'add'
    #   result= (@number1 + @number2).to_s
    # when 'substract'
    #   result= (@number1 - @number2).to_s
    # when 'multiply'
    #   result= (@number1 * @number2).to_s
    # when 'divide'
    #   result= (@number1 / @number2).to_s


    n1 = params[:number1].to_i
		n2 = params[:number2].to_i

		case params[:operation]
		when 'add'
			result=(n1 + n2).to_s
		when 'subtract'
			result=(n1 - n2).to_s
		when 'multiply'
			result=(n1 * n2).to_s
		when 'divide'
			result=(n1 / n2).to_s
    end
  end
end