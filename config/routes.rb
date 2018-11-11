Rails.application.routes.draw do
  resources :bookmarks
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#hello'
  #
  get 'books/:id/bookmarks' => 'books#bookmarks', :as => :book_bookmarks
  root 'books#index'
end
