class Account < ActiveRecord::Base
  attr_accessible  :name, :total

  # validates :name, :total, presence: true
  # validates :total, greater_than_or_equal_to: {0}
end