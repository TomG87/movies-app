Rails.application.routes.draw do
 get "/movies/:id" => "movies#show"
 get "/movies" => "movies#index"
 post "/movies" => "movies#create"
 patch "/movies/:id" => "movies#update"
 delete "/movies/:id" => "movies#destroy"
end
