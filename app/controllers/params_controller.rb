class ParamsController < ApplicationController
  def display_name
    name = params["my_name"]
    if name
      if name[0].downcase == "a"
        render json: "Hey, your name starts with the first letter of the alphabet!"
      else
        render json: "#{name.upcase}"
      end
    else
      render json: "No name supplied!"
    end
  end

  def number_game
    answer = 36
    num = params[:number]
    if num
      if num.to_i > answer
        render json: { message: "Too high! Guess again!" }
      elsif num.to_i < answer
        render json: { messsage: "Too low! Guess again!" }
      else
        render json: { message: "That's the correct number! Congrats!" }
      end
    else
      render json: { message: "No number given!" }
    end
  end

  def login
    correct_username = "hugh"
    correct_password = "swordfish"
    username = params[:username]
    password = params[:password]
    if username == correct_username && password == correct_password
      render json: { message: "Valid Credentials" }
    else
      render json: { message: "Invalid Credentials" }
    end
  end
end
