class List < ApplicationRecord
  default_scope { order(:position) }
  has_many :items, -> { order(:position) }, dependent: :destroy
  acts_as_list

  after_create_commit { broadcast_append_to "lists" }
  after_update_commit { broadcast_replace_to "lists" }
  after_destroy_commit { broadcast_remove_to "lists" }

  validates :name, presence: true
end
