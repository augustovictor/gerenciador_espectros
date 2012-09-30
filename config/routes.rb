GerenciadorEspectros::Application.routes.draw do

  devise_for :admins do get '/admins/sign_out' => 'devise/sessions#destroy' end

  root to: "Atletas#index"

  resources :atletas do
    get 'inadimplentes', :on => :collection
    get 'em_dia', :on => :member
  end
end

# :on => :member
  # => atletas/:id/inadimplentes
# :on => :collection
  # => atletas/inadimplentes
