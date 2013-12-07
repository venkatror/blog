class Post < ActiveRecord::Base
	include ActiveModel::ForbiddenAttributesProtection
	has_many :comments
	validates_presence_of :title,:content
	belongs_to :user
	default_scope -> { order('created_at DESC') }
end
