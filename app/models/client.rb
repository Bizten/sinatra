class Client < ActiveRecord::Base
  include ActiveModel::API
  has_one :card

  attr_accessor :name
  validates :name
end
