class Heroine < ApplicationRecord
  belongs_to :power

  # Make sure no two heroines have the same super name.
  validates :super_name, uniqueness: true
end
