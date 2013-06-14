FurryHelpster::Application.routes.draw do
  namespace :admin do
    resources :doc_groups
    resources :documents
    resources :versions
    resources :products
  end

  root :to => 'welcome#index'
end
