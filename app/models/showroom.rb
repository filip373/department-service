class Showroom < ActiveRecord::Base
  has_many :contracts

  def Showroom.synchronize(showrooms)
    operations = Hash.new(0)
    showrooms.each do |showroom|
      if Showroom.exists?(showroom['id'])
        Showroom.find(showroom['id']).update!(showroom)
        operations[:updated] += 1
      else
        Showroom.create!(showroom)
        operations[:created] += 1
      end
    end
    return operations
  end
end
