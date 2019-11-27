class Heroine < ApplicationRecord
    belongs_to :power
    validates :name, presence: true, uniqueness: true


    # def power_link
    #     self.power.map{|power| power.name}
    # end
 
    # <% @heroine.powers.each do |power| %>
    #     <%= link_to power.name, power_path(power) %> 
    # <% end %>
end
