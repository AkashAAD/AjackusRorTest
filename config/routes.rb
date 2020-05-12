Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    namespace :api do
      namespace :v1 do
        resource :contact, only: [] do
          post 'contact'
        end
      end
    end
    match "contact" => "home#contact", as: :contact, via: [:get, :post]
  end
end
