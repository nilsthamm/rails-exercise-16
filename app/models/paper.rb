class Paper < ActiveRecord::Base
	has_and_belongs_to_many :authors
	validates :title, :venue, :year, :presence => true
  validates :year, numericality: { only_integer: true } 
  #after_initialize :default_values

  # private
  #   def default_values
  #     self.authors ||= Array.new()
  #   end
end
