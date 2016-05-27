class Synchronization < ActiveRecord::Base

  def Synchronization.make
    central = CentralShowrooms.new(ENV['CENTRAL_SYNC_URL'])
    date = Time.now
    operations = nil
    if Synchronization.any?
      operations = Showroom.synchronize(central.updated_after(last_date))
    else
      operations = Showroom.synchronize(central.all)
    end
    Synchronization.create!(date: date, created: operations[:created], updated: operations[:updated])
  end

  def Synchronization.last_date
    Synchronization.select(:date).order(date: :desc).first.date
  end

end
