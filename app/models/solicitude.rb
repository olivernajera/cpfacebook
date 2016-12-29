class Solicitude < ActiveRecord::Base
  validates :vacante, presence: true
  validates :email, presence: true
  validates :telefono, presence: true
end