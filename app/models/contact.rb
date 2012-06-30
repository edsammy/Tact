class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :year
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true

  scope :recent, order("created_at desc")
end
