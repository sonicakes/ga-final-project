# == Schema Information
#
# Table name: administrators
#
#  id              :bigint(8)        not null, primary key
#  password_digest :text
#  first_name      :text
#  email           :text
#  last_name       :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Administrator < ApplicationRecord
  validates :first_name, :last_name, :email, :password_digest, presence: true
  has_secure_password
end
