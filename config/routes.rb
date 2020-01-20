Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :books
  get 'show' => 'books#show'#後で

  post 'books' => 'books#create'

  get 'books/:id' => 'books#show', as: 'book'
end
