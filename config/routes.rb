Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'busca_clima/buscar'
  get 'busca_clima/buscar_horas'
  get 'busca_clima/buscar_dias'
end
