class GameController < ApplicationController
  def game
    cookies[:secret] = rand(100)+1
  end

  def try
    @guess = params[:guess]

    if :guess 
    render 'try.html.erb'
  end
end
