class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

#   def full_address
#     "#{self.address} - #{self.city} - #{self.uf}"
#   end

end
