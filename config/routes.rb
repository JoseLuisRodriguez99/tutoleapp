Rails.application.routes.draw do
    resources :usuarios do 
        resources :documentos
        resources :calificaciones
        
    end

    resources :areas do 
        resources :materia
    end
    resources :tutorias

    get 'materia/:id', to: 'materia#show'
    resources :lugars

 
end
