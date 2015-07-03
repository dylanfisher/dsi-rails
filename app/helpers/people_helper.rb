module PeopleHelper

  def full_name(person)
    "#{person.try(:first_name)} #{person.try(:middle_name)} #{person.try(:last_name)}"
  end

end
