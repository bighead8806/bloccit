Rails.application.routes.draw do
  get 'advertisements/index'

  get 'advertisements/show'

  get 'advertisements/new'

  get 'advertisements/edit'

  resources :posts

  get 'about' => 'welcome#about'
  
end
