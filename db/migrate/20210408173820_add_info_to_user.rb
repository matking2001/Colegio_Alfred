class AddInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :identificacion, :string
    add_column :users, :primer_nombre, :string
    add_column :users, :segundo_nombre, :string
    add_column :users, :primer_apellido, :string
    add_column :users, :segundo_apellido, :string
    add_column :users, :telefono, :string
    add_column :users, :direccion, :string
    add_column :users, :sexo, :string
    add_column :users, :fecha_nacimiento, :date
  end
end
