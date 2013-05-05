class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :NombreCompleto
      t.date :FechaNacimiento
      t.string :Sexo
      t.integer :Estatura
      t.string :Email
      t.string :Telefono
      t.text :Actividad
      t.text :Preferencias

      t.timestamps
    end
  end
end
