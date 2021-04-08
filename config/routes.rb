require_dependency "small_caps_constraint"

SmallCap::Engine.routes.draw do
  get "/" => "small_caps#index", constraints: SmallCapConstraint.new
  get "/actions" => "actions#index", constraints: SmallCapConstraint.new
  get "/actions/:id" => "actions#show", constraints: SmallCapConstraint.new
end
