class GameController < ApplicationController
  def game
    cookies[:secret] = rand(100)+1
    cookies[:count] = 0
  end

  def try
    @guess = params[:guess].to_i
    if @guess == nil
      game()
    end
    if @guess != nil
      compare()
    end
    render 'try.html.erb'
  end

  def compare
    if @guess > cookies[:secret].to_i
      @feedback = "TOO HIGH!!!!!"
    elsif @guess < cookies[:secret].to_i
      @feedback = "TOO LOW!!!!!"
    elsif @guess == cookies[:secret].to_i
      @feedback = "YOU GOT IT, DUDE!!!!👍 👍 👍"
    end
    counter()
  end

  def counter
    @counter = cookies[:count].to_i
    @counter += 1
    cookies[:count] = @counter
  end

  def reset
    cookies[:secret] = rand(100)+1
    cookies[:count] = 0
    try()
  end
  def kill
    cookies[:name] = params[:name]
  end
  def validate
    cookies[:name] = params[:name]
  end
  def get_name
    cookies[:name] = params[:name]
    cookies[:secret] = rand(100)+1
    cookies[:count] = 0
  end
end
