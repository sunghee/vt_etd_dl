class Etd < ActiveRecord::Base
  belongs_to :author, :dependent => :delete_all
  validates_presence_of :title
  validates_presence_of :degree
end
