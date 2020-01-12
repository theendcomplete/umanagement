# frozen_string_literal: true

class User < ApplicationRecord
  has_one :moderator
  has_one :advertiser
  has_one :administrator
  has_one :executor


end
