class Post < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true



	has_one_attached :image
	has_many :comments, dependent: :delete_all
	belongs_to :category
	belongs_to :user
end
