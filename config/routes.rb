Rails.application.routes.draw do
# --> page d'acceuil :
  root to: 'static_pages#home'

# --> genere toute les routes pour les pages statiques :
  resources :static_pages

# --> genere toute les routes par dépendance :
#[routes user -> [routes gossip -> [routes commentaire]]]
  resources :users do 
    resources :gossips do 
      resources :comments
  	end
  end
end
