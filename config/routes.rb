Rails.application.routes.draw do
  scope module: :user do
    root to:  'homes#top'
    get '/about' => 'homes#about', as: 'about'

    resources :users, only: [:show, :edit, :update] do
      resource :follows, only: [:create, :destroy]
        get :followings, on: :member
        get :followers, on: :member
    end
    resources :posts,        only: [:new, :show, :index, :create, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource  :post_favorites,      only: [:create, :destroy]
    end
    resources :cooks do
      resources :cook_comments, only: [:create, :destroy]
      resource  :cook_favorites,      only: [:create, :destroy]
    end
    resources :training
  end
  devise_for :admins
  devise_for :users, path: '',skip: [:passwords],  controllers: {
    registrations: 'user/registrations',
    sessions: 'user/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
