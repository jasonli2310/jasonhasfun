Rails.application.routes.draw do

  # Routes for the Inmail resource:
  # CREATE
  get "/inmails/new", :controller => "inmails", :action => "new"
  post "/create_inmail", :controller => "inmails", :action => "create"

  # READ
  get "/inmails", :controller => "inmails", :action => "index"
  get "/inmails/:id", :controller => "inmails", :action => "show"

  # UPDATE
  get "/inmails/:id/edit", :controller => "inmails", :action => "edit"
  post "/update_inmail/:id", :controller => "inmails", :action => "update"

  # DELETE
  get "/delete_inmail/:id", :controller => "inmails", :action => "destroy"
  #------------------------------

  #------------------------------

  # Special Sign in/Sign Up


  # Routes for the Writingcomment resource:
  # CREATE
  get "/writingcomments/new", :controller => "writingcomments", :action => "new"
  post "/create_writingcomment", :controller => "writingcomments", :action => "create"

  # READ
  get "/writingcomments", :controller => "writingcomments", :action => "index"
  get "/writingcomments/:id", :controller => "writingcomments", :action => "show"

  # UPDATE
  get "/writingcomments/:id/edit", :controller => "writingcomments", :action => "edit"
  post "/update_writingcomment/:id", :controller => "writingcomments", :action => "update"

  # DELETE
  get "/delete_writingcomment/:id", :controller => "writingcomments", :action => "destroy"
  #------------------------------

  # Routes for the Writing resource:

  #Secret Sign In


  # CREATE
  get "/writings/new", :controller => "writings", :action => "new"
  post "/create_writing", :controller => "writings", :action => "create"

  # READ
  get "/writings", :controller => "writings", :action => "index"
  get "/writings/:id", :controller => "writings", :action => "show"

  # UPDATE
  get "/writings/:id/edit", :controller => "writings", :action => "edit"
  post "/update_writing/:id", :controller => "writings", :action => "update"

  # DELETE
  get "/delete_writing/:id", :controller => "writings", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"

  # MY likes
  get "/my_likes", :controller => "users", :action => "liked"
  #------------------------------

  # Routes for the Photo resource:
  root 'photos#index'

  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"




end
