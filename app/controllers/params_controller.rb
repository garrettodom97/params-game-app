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
    num = params["number"]
    if num
      if num.to_i > answer
        render json: "Too high! Guess again!"
      elsif num.to_i < answer
        render json: "Too low! Guess again!"
      else
        render json: "That's the correct number! Congrats!"
      end
    else
      render json: "No number given!"
    end
  end
end
