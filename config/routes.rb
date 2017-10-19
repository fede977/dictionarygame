Rails.application.routes.draw do
  get 'game/guessing_game'
  get 'word/index'
  get 'word/win'
  get 'word/lose'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
