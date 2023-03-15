class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles=[]
    character_name=""
    show_name=""

    self.characters.map do |character|
    character_name = "#{character.name}"
    end
    self.shows.map do |show|
    show_name = "#{show.name}"
    end

    roles << "#{character_name} - #{show_name}"
  end
end