class Upload < ActiveRecord::Base
	include Paperclip::Glue
	attr_accessible :file, :name
	has_attached_file :file
end
