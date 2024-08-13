class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # :database_authenticatable: Allows users to sign in using a username and password stored in the database.
  # :recoverable: Enables password recovery for users who forget their password.
  # :rememberable: Allows users to stay logged in even after closing their browser.
  # :validatable: Provides validation for user attributes, such as email and password.

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
