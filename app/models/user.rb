class User < ApplicationRecord
    attribute :user_name, :string
    has_secure_password
end