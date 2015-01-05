Rails.application.routes.draw do
      resources :events
      
      root "welcome#index"
      get "welcome/say_hello" => "welcome#say"
      # match ':controller(/:action(/:id(.:format)))' , :via => :all
end
