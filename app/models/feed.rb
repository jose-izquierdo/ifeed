# == Schema Information
#
# Table name: feeds
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  category_id :integer
#  description :string(255)
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  fk__feeds_category_id  (category_id)
#

class Feed < ActiveRecord::Base
	has_many :users, through: :feed_users
	has_many :feed_users
	has_many :feed_items
	belongs_to :category
	validates :name, presence: true
end
