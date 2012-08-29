class Apartment < ActiveRecord::Base
  attr_accessible :creator, :description, :electricity, :internet, :max_price, :min_price, :n_available, :preference, :size, :television, :title, :ap_type, :water, :zone, :avatar, :city
  has_attached_file :avatar, :styles => { :medium => "420x420>", :thumb => "150x150>" }
end
