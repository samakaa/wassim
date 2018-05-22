class Payment < ActiveRecord::Base


attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year

 belongs_to :user


def self.month_options

      Date::MONTHNAMES.compact.each_with_index.map { |name, i| ["#{i+1}", i+1]}

 end


def self.year_options

      (Date.today.year..(Date.today.year+10)).to_a

 end


def process_payment

     customer = Stripe::Customer.create email: email, card: token #on crée un client avec un email et un token généré par votre numéro de carte bleue

     Stripe::Charge.create customer: customer.id,#à partir de ce client, si le paiement est valide on crée le paiement

                                                               amount: Reservation.last.total*100,

                                                               description: 'Réservation',

                                                               currency: 'eur'

 end

 end
