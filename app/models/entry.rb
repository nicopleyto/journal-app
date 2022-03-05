class Entry < ApplicationRecord
    belongs_to :category
    validates :title, presence: true, length: {maximum: 50}
end
