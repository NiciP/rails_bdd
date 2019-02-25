Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/–skip'
  get 'comments/routes'
  get 'articles/index'

  root controller: :articles, action: :index

  resources :articles, only: [:index] do
    resources :comments, only: [:create]
  end
end
