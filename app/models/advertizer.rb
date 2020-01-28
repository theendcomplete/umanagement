# frozen_string_literal: true

require './lib/advertizers/advertizer_module'

class Advertizer < ApplicationRecord
  include AdvertizerModule
  belongs_to :user

  def self.all
    result = ActiveRecord::Base.connection.execute('SELECT * FROM advertizers WHERE id IS NOT NULL;')
    fields = result.fields
    advertizers = result.values.map do |value_set|
      Advertizer.instantiate(Hash[fields.zip(value_set)])
    end
    advertizers
  end
end
