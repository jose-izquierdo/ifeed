# == Schema Information
#
# Table name: feeds
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
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

require 'spec_helper'

describe Feed do
  pending "add some examples to (or delete) #{__FILE__}"
end
