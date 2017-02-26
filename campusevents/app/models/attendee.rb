class Attendee < ActiveRecord::Base
    validates :first_name, :last_name, :email, presence: true

    has_many :subscriptions
    has_many :events, :through => :subscriptions

    def full_name
        ret = first_name + " " +  last_name
    end
end
