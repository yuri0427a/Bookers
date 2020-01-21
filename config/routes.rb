Rails.application.routes.draw do
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

  root :to => 'books#top'

  post 'books' =>'books#create'

  post 'books/:id' => 'books#show'
  
  get 'books' => 'books#index'

  get 'books/:id/edit/' => 'books#edit'

  patch 'books/:id/update' => 'books#update'

  delete 'books/:id' => 'books#destroy'


end