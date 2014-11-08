class Blog < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
  max_paginates_per 5
end
