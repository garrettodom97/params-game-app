Rails.application.routes.draw do
  get "name" => "params#display_name"
  get "number_game" => "params#number_game"
  get "number_game_segments/:number" => "params#number_game_segments"
end
