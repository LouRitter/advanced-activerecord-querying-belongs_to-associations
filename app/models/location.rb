class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    Location.joins(:region).merge(Region.by_name(region))
  end

  
end
