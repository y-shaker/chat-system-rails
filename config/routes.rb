Rails.application.routes.draw do
  
  resources :clients
  resources :users


  
  resources :applications , param: :token do
    resources :chats do
      post 'messages/:client_id' => 'messages#create'
      resources :messages do
        
      end
    end


  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
