# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  title          :string
#  author         :string
#  year_published :integer
#  genre          :string
#  available      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Book < ActiveRecord::Base
end
