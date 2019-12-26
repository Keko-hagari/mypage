Rails.application.routes.draw do
  get 'books' => "books#index"
  root 'books#root'
  get 'books/new' => 'books#new'
  post 'books' => 'books#create'
  get 'books/:id' =>'books#show'
  get 'books/:id/edit' =>'books#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
