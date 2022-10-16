class Card < ActiveRecord::Base
  include ActiveModel::API

  belongs_to :client

  attr_accessor :datetime
  validates :datetime
end
