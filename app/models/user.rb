# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :session
end
