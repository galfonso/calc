class Pesaje < ActiveRecord::Base
  attr_accessible :ComidasConProteinas, :peso, :cliente_id
  belongs_to :cliente
  validates :cliente_id, presence: true
end
