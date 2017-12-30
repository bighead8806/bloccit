Rails.application.routes.draw do
  get 'questions/title:'

  get 'questions/string,'

  get 'questions/body:'

  get 'questions/text,'

  get 'questions/resolved:'

  get 'questions/boolean'

  resources :posts

  get 'about' => 'welcome#about'
  
end
