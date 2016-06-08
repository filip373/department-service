class Synchronization < ActiveRecord::Base

  def Synchronization.make
    central = CentralShowrooms.new(ENV['CENTRAL_SYNC_URL'])
    date = Time.now
    operations = nil
    last_sync = last_by_date
    unless last_sync.nil?
      operations = Showroom.synchronize(central.updated_after(last_sync.date))
    else
      operations = Showroom.synchronize(central.all)
    end
    Synchronization.create!(date: date, created: operations[:created],
      updated: operations[:updated])
    last_sync.destroy if !last_sync.nil? && last_sync[:created] == 0 && last_sync[:updated] == 0
  end

  def Synchronization.last_by_date
    Synchronization.order(date: :desc).first
  end

end
