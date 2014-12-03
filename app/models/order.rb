class Order < ActiveRecord::Base
	validates_presence_of :custumer, :product, :destination
	belongs_to :stage
	mount_uploader :attachment, AttachmentUploader
end
