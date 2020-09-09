Rails.application.routes.draw do
  root to: 'pages#home'
  get '/tags' => 'pages#tags', as: 'tags'
  get '/tag_search' => 'pages#tags_search', as: 'tags_search'
  post '/notes/new' => 'contacts#create_note', as: 'notes'
  delete '/notes/:slug/delete' => 'contacts#delete_note', as: 'delete_note'
  resources :contacts, param: :slug
end

