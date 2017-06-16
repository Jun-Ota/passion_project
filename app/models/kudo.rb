class Kudo < ActiveRecord::Base
  # Remember to create a migration!
  validates :user_name, :presence => true
  validates :subject,  :presence => true
  validates :description,  :presence => true

  belongs_to :user

end
