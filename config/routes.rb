Rails.application.routes.draw do
  
  root 'contacts#index'

  get 'contacts/new' => 'contacts#new', as: "new_contact"
  post 'contacts' => 'contacts#create'
  get 'contacts/:permalink' => 'contacts#show', as: 'show_contact'
  get 'contacts/:permalink/edit' => 'contacts#edit', as: "edit_contact"
  delete 'contacts/:permalink' => 'contacts#destroy', as: 'delete_contact'
  patch 'contacts/:permalink' => 'contacts#update'

end
