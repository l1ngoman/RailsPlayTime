class GameController < ApplicationController
  def game
    cookies[:secret] = rand(100)+1
  end

  def try
    @guess = params[:guess]
    if @guess == nil
      game()
    end
    if @guess != nil
      compare()
    end
    render 'try.html.erb'
  end

  def compare
    if @guess > cookies[:secret]
      @feedback = "TOO HIGH"
    elsif @guess < cookies[:secret]
      @feedback = "TOO LOW"
    elsif @guess == cookies[:secret]
      @feedback = "YOU GOT IT, DUDE!!!!👍 👍 👍"
    end
  end
end
