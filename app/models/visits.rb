class Visits < ActiveRecord::Base
  include ActiveModel::API

  :client has_many :visits

  attr_accessor :datetime
  validates :datetime
end
