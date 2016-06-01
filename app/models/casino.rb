class Casino < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :street_address, :city, :state, :zip, presence: true

end
