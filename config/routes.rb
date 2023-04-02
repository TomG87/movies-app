Rails.application.routes.draw do
 get "/movies/:id" => "movies#show"
 get "movies" => "movies#index"
end
