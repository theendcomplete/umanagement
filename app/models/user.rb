# frozen_string_literal: true

class User < ApplicationRecord
  has_one :moderator, dependent: :destroy
  has_one :advertizer, dependent: :destroy
  has_one :administrator, dependent: :destroy
  has_one :executor, dependent: :destroy

  scope :with_advertizer, lambda {
    User.include(:advertizer).where.not(advertiser: nil)
  }
end
