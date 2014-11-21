class Order < ActiveRecord::Base
	validates_presence_of :custumer, :product, :destination
end
