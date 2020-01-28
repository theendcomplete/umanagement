# frozen_string_literal: true

json.extract! user, :id, :name
json.url api_v1_user_path(user, format: :json)
