Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/game' => 'game#get_name'
  get '/try' => 'game#try'
  get '/kill' => 'game#kill'
  get '/validate' => 'game#validate'
  get '/game' => 'game#reset'

end
