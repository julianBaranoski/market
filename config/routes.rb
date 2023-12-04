Rails.application.routes.draw do
  resources :categories
  resources :items do
    member do
      put 'mark_as_purchased'
      put 'mark_as_not_purchased'
    end
  end
  get '/about_us', to: 'static_pages#about_us'
end
