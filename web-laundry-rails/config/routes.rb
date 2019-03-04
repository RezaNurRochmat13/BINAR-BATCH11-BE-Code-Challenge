Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/members', to: 'member#showAllMembers'
  get '/officers', to: 'officer#showAllOfficer'
  get '/order-laundry', to: 'order_laundry#showAllOrderLaundry'
  get '/packaging-laundry', to: 'packaging_laundry#showAllPackagingLaundry'
end
