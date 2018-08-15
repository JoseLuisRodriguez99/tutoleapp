Rails.application.routes.draw do
resources :usuarios
resources :areas do 
    resources :materias
end

resources :lugars
end
