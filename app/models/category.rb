class Category < ApplicationRecord
    belongs_to :user
    has_many :entries, dependent: :destroy
    validates :title, presence: true, length: {maximum: 50}
    validates :description, length: {maximum: 280}
end
