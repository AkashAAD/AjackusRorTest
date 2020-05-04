Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    match "contact" => "home#contact", as: :contact, via: [:get, :post]
  end
end
