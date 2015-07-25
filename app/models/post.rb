class Post < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true,
										length: { maximum: 30 }
	validates :body, presence: true

	belongs_to :user
	has_many :comments
end
