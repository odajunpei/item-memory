Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :products do
    resources :posts
  end
  resources :inquiries, only: [:new, :create], param: :name
  get 'inquiries/:name/:id' => 'inquiries#show'

end

