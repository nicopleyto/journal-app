class Entry < ApplicationRecord
    belongs_to :category
    validates :title, presence: true, length: {maximum: 50}
    has_rich_text :body
end
