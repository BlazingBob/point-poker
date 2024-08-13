# frozen_string_literal: true

class Session < ApplicationRecord
  has_many :users
  before_create :create_uuid

  def create_uuid
    self.uuid = SecureRandom.uuid
  end

  def to_param
    uuid
  end
end
