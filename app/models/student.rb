class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.search(name)
    if name
      students = Student.where('lower(last_name) = ? OR lower(first_name) = ?', name.downcase, name.downcase)
    else
      Student.all
    end
  end

end
