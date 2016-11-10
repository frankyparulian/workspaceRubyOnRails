Rails.application.routes.draw do
  get 'articles/index'

  #get 'articles/create'

  #get 'articles/new'

#  get 'articles/edit'

#  get 'articles/show'

#  get 'articles/update'

#  get 'articles/destroy'

#  get 'welcome/index'

  resources :articles
  root 'welcome#index'
end
