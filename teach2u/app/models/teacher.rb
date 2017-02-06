class Teacher < ActiveRecord::Base
    validates :first_name, :last_name, :email, :username, :password, presence: true
    validates :username, :email, uniqueness: true
end
