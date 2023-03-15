class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

  def actors_list
    list=""
    first=""
    last=""
    self.actors.map do |actor|
        first="#{actor.first_name}"
        last="#{actor.last_name}"
    end
    list = "#{first} #{last}"
  end
end