class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
    @computer_choice = ["rock", "paper", "scissors"].sample
    @user_choice = params[:id]

    if @computer_choice == "rock" && @user_choice == "paper"
      @msg = "You Win"
    elsif @computer_choice == "paper" && @user_choice == "scissors"
      @msg = "You Win"
    elsif @computer_choice == "scissors" && @user_choice == "rock"
      @msg = "You Win"
    else
      @msg = "You Lose"
    end
  end
end
