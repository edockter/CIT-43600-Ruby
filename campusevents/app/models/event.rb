class Event < ActiveRecord::Base
    validates :name, :start_date, :end_date, presence: true
    validate :start_is_before_end

    has_and_belongs_to_many :sponsors
    has_many :meetings
    has_many :subscriptions
    has_many :attendees, :through => :subscriptions



    def start_is_before_end
        if end_date < start_date
            errors.add :end_date, "- event must start before it can end."
        end
    end
end
