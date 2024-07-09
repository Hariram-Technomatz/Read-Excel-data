Rails.application.routes.draw do
  root 'excel_reader#index'
  post 'upload', to: 'excel_reader#upload'
end
