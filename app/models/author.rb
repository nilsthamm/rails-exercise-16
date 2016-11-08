class Author < ActiveRecord::Base
	attr_accessor :papers
	validates :last_name, :presence => true
  after_initialize :default_values


	def name
		"#{first_name} #{last_name}"
	end	
	private
    def default_values
      self.papers ||= Array.new()
    end
end
