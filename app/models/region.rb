class Region < ActiveRecord::Base
  has_many :locations

  def self.by_name(name)
    where(name: name)
  end
end
