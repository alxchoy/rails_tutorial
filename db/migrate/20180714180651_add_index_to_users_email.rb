class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
  	# Añade un index a la columna email de la tabla users
  	add_index :users, :email, unique: true
  end
end
