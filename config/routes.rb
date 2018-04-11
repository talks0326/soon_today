# == Route Map
#
#                           Prefix Verb       URI Pattern                             Controller#Action
#                            rooms GET        /rooms(.:format)                        rooms#index
#                                  GET        /rooms/:id(.:format)                    rooms#show
#                      tickets_new GET        /tickets/new(.:format)                  tickets#new
#                   tickets_create POST       /tickets/create(.:format)               tickets#create
#                            swipe GET        /swipe(.:format)                        swipe#index
#                      swipe_judge POST       /swipe/judge(.:format)                  swipe#judge
#                             root GET        /                                       home#index
#                             home GET        /home(.:format)                         home#index
#                 new_user_session GET        /users/sign_in(.:format)                devise/sessions#new
#                     user_session POST       /users/sign_in(.:format)                devise/sessions#create
#             destroy_user_session GET|DELETE /users/sign_out(.:format)               devise/sessions#destroy
# user_facebook_omniauth_authorize GET|POST   /users/auth/facebook(.:format)          devise/omniauth_callbacks#passthru
#  user_facebook_omniauth_callback GET|POST   /users/auth/facebook/callback(.:format) devise/omniauth_callbacks#facebook
#                new_user_password GET        /users/password/new(.:format)           devise/passwords#new
#               edit_user_password GET        /users/password/edit(.:format)          devise/passwords#edit
#                    user_password PATCH      /users/password(.:format)               devise/passwords#update
#                                  PUT        /users/password(.:format)               devise/passwords#update
#                                  POST       /users/password(.:format)               devise/passwords#create
#         cancel_user_registration GET        /users/cancel(.:format)                 devise/registrations#cancel
#            new_user_registration GET        /users/sign_up(.:format)                devise/registrations#new
#           edit_user_registration GET        /users/edit(.:format)                   devise/registrations#edit
#                user_registration PATCH      /users(.:format)                        devise/registrations#update
#                                  PUT        /users(.:format)                        devise/registrations#update
#                                  DELETE     /users(.:format)                        devise/registrations#destroy
#                                  POST       /users(.:format)                        devise/registrations#create
#                     edit_profile GET        /profiles/:id/edit(.:format)            profiles#edit
#                          profile GET        /profiles/:id(.:format)                 profiles#show
#                                  PATCH      /profiles/:id(.:format)                 profiles#update
#                                  PUT        /profiles/:id(.:format)                 profiles#update
# 

Rails.application.routes.draw do

  namespace :rooms do
    get "/",action: "index"
    get ":id",action: "show"
  end

  namespace :tickets do
    get "new"
    get "create"
  end
  
  namespace :swipe do
  	get "/",action: "index"
  	post "judge"
  end

  root to: "home#index"
  get 'home' => "home#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles,only: [:show,:edit,:update]
  #root to: "home#index"
end
