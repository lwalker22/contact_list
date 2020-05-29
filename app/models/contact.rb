class Contact < ApplicationRecord
  # Associations
    # belongs_to
    # has_many
    # has_one
    has_one :address, dependent: :destroy
    # has_many :addresses
    # has_many :through
    # has_one :through
    # dependent
  # Vaildations
    # confirmation
    #   helper two text fields make sure both values are the same
    # inclusion
    #   vaildates the attr that is in a given sets
    #   validates :size, inclusion: { 
    #     in: %w(small medium large),
    #      message: "%{value} is not a valid size" 
    #   }
    # length
    #   make sure that it is a certain character size
    #   class Person < ActiveRecord::Base
    #     validates :name, length: { minimum: 2 }
    #     validates :bio, length: { maximum: 500 }
    #     validates :password, length: { in: 6..20 }
    #     validates :registration_number, length: { is: 6 }
    #   end
    # numericality
    #   only allow numbers 
    #   class Player < ActiveRecord::Base
    #     validates :points, numericality: true
    #     validates :games_played, numericality: { only_integer: true }
    #     validates :golf_handicap, numericality: { 
    #       less_than_or_equal_to: 40.4, 
    #       greater_than_or_equal_to: 2 
    #     }
    #   end
    # presence
    #   not empty
      validates :email, :first_name, :last_name, presence: true
    # uniqueness
    #   attr unique before it saves 
      validates :email, uniqueness: true
      # Options
      # allow_nil
      #   value to be nil
      #   class Coffee < ActiveRecord::Base
      #     validates :size, inclusion: { in: %w(small medium large),
      #     message: "%{value} is not a valid size" }, allow_nil: true
      #   end
      # allow_blank
      #   value to be ""
      #   class Topic < ActiveRecord::Base
      #     validates :title, length: { is: 5 }, allow_blank: true
      #   end
      # message
      #   text when errors occurs
      #   class Coffee < ActiveRecord::Base
      #     validates :size, inclusion: { in: %w(small medium large),
      #     message: "%{value} is not a valid size" }
      #   end
      # on
      #   trigger on actions
      #   class Person < ActiveRecord::Base
      #     validates :email, uniqueness: true, on: :create
      #     validates :age, numericality: true, on: :update
      #     validates :name, presence: true, on: :save
      #   end
  # Callbacks
    # before_validation
    # after_validation
    # before_save
    # after_save
    # around_save
    # after_create
    # before_create
    # class CreditCard < ActiveRecord::Base
    #   before_save :encrypt_card_number
    #   private
    #     def encrypt_card_number
    #       self.card_number = bcrypt(self.card_number)
    #     end
    # end
  # Class methods
  #  table wide logic
   def self.by_first_name
      order(:first_name)
    end
  # instances methods
    # record wide logic
    def full_name
      "#{self.first_name} {self.last_name}"
     end
    # fat models, skinny controllers
    # controller -actions
    # model asc, valid, logic
    Attr. Serialization
    create model assoc 
    class CreatePeople < ActiveRecord::Migration
      def change
        create_table :people do |t|
          t.belongs_to :account
          t.text :hobbies
        end
      end
    end
    class Person < ActiveRecord::Base
      belongs_to :account
      serialize :hobbies, Array
    end
    Person.create(hobbies: ['boating', 'reading'])
    or 
    Person has_many hobbies 
    hobbies belongs_to person 
end