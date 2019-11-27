class Heroine < ApplicationRecord
    belongs_to :power
    validates :super_name, presence: true, uniqueness: true

    def self.search(search)
        if search
            super_power = Power.find_by(name: search)
            if super_power
                self.where(power_id: super_power)
            else
                @heroines = Heroine.all
            end
        else
            @heroines = Heroine.all
        end
    end

end
