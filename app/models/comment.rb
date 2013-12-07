class Comment < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
	belongs_to :post

	validates_presence_of :body
	default_scope -> { order('created_at DESC') }
end
