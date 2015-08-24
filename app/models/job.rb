class Job < ActiveRecord::Base
  belongs_to :category

  validates :title, :company, :description, :url, :category_id, presence: :true
  validates :title, :company, :description, :url, length: {minimum: 5}
end
