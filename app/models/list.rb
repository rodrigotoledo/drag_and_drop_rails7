class List < ApplicationRecord
  default_scope { order(:position) }
  has_many :items, -> { order(:position) }, dependent: :destroy
  acts_as_list
end
