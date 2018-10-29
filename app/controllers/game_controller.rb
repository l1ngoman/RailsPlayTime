class GameController < ApplicationController
  def try
    cookies[:guess] = params[:guess] unless params[:guess].nil?
    render 'try.html.erb'
  end
end
