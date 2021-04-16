require_dependency "small_caps_constraint"

SmallCaps::Engine.routes.draw do
  get "/" => "small_caps#index", constraints: SmallCapsConstraint.new
  get "/actions" => "actions#index", constraints: SmallCapsConstraint.new
  get "/actions/:id" => "actions#show", constraints: SmallCapsConstraint.new
end
