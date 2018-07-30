
class BikeShare

  def initialize(total_bikes)
    @events = []
    @current_inventory = []
  end

  def new_bike(new_bike)
    @current_inventory << new_bike
  end

  def checkout(bike)
    @events << bike
  end

  def checkin(bike)
    @events << bike
  end

  # def bikes_in
  #   bikes_list = @events.group_by {|b| b}.values
  #   bike_returns = []
  #   bike_rented = []
  #   bikes_list.each do |u|
  #     if u.length.even?
  #       bike_returns << u.first
  #     else
  #       bike_rented << u.first
  #     end
  #
  #   end
  #   puts  bike_returns
  # end
  #
  # def bikes_out
  #   bike_list = @events.group_by {|b| b}.values
  #
  #   bike_returns = []
  #   bike_rented = []
  #   bike_list.each do |u|
  #     if u.length.even?
  #       bike_returns << u.first
  #     else
  #       bike_rented << u.first
  #     end
  #   end
  #   bike_rented
  # end
  #

  def check_in_events
    bike_list = @events.group_by {|b| b}.values
    event_counts = {}
    bike_list.each do |u|
      event_counts[u.first] = u.length / 2
    end
    event_counts
  end
end

bikes = BikeShare.new([])
bikes.new_bike(1)
bikes.new_bike(2)
bikes.new_bike(7)
bikes.checkout(1)
bikes.checkin(1)
bikes.checkout(1)
bikes.checkin(1)
bikes.checkout(1)
bikes.checkin(1)
p bikes.check_in_events
