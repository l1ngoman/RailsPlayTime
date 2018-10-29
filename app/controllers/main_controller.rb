class MainController <ApplicationController
  def answers
    cookies[:name] = params[:name]
    @name = params[:name]
    render 'answers.html.erb'
  end
end
