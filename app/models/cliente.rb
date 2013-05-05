class Cliente < ActiveRecord::Base
  attr_accessible :Actividad, :Email, :Estatura, :FechaNacimiento, :NombreCompleto, :Preferencias, :Sexo, :Telefono
  has_many :pesajes
end
