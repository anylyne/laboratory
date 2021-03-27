Rails.application.routes.draw do
  root 'home#new'
  post 'home/import', 'home#import'
  get 'home/report', 'home#report'
end
