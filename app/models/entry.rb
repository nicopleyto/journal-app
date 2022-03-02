class Entry < ApplicationRecord
    belongs_to :category
    validates :title, presence: true
    has_one :user, through: :categories
end
