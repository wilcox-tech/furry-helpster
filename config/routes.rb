FurryHelpster::Application.routes.draw do
  resources :products, :only => [:index, :show]
  resources :versions, :only => [:show]
  resources :doc_groups, :only => [:show]

  namespace :admin do
    resources :doc_groups
    resources :documents
    resources :versions
    resources :products
  end

  root :to => 'welcome#index'
end
