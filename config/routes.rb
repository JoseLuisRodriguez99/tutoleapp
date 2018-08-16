Rails.application.routes.draw do
resources :usuarios

resources :areas do 
    resources :materia
end

resources :lugars
end
