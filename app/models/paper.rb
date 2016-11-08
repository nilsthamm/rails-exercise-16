class Paper < ActiveRecord::Base
	attr_accessor :authors
	validates :title, :venue, :year, :presence => true
  validates :year, numericality: { only_integer: true } 
  after_initialize :default_values

  private
    def default_values
      self.authors ||= Array.new()
    end
end
