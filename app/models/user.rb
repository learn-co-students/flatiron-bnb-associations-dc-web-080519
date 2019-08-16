class User < ActiveRecord::Base

    self.has_many(:listings, foreign_key: 'host_id')
    has_many :reservations, :foreign_key => 'guest_id'
    has_many(:reservations, {through: :listings, foreign_key: 'host_id'})
    #has_many :hosts, through: :listings, :foreign_key => 'host_id'
    #has_many :guests, through: :reservations, :foreign_key => 'guest_id'
    has_many :reviews, :foreign_key => 'guest_id'
    has_many :trips, :class_name => "Reservation", :foreign_key => 'guest_id'
end