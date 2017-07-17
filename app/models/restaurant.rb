class Restaurant < ApplicationRecord
  belongs_to :user

  validates :name, :cuisine, :city, :state, :zip, presence: true

end
