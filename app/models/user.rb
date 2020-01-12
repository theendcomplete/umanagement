# frozen_string_literal: true

class User < ApplicationRecord
  has_one :moderator, dependent: :destroy
  has_one :advertiser, dependent: :destroy
  has_one :administrator, dependent: :destroy
  has_one :executor, dependent: :destroy
end
