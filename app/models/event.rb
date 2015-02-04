class Event < ActiveRecord::Base
    scope :desc, order("events.event_at DESC")
    has_one :location
    has_many :attendees
    has_many :event_groupships
    has_many :groups, :through => :event_groupships
    belongs_to :category
    validates_presence_of :name
    accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank
end
