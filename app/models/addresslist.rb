class Addresslist < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  validates_presence_of :street1,:state,:country,:phone,:city

end
