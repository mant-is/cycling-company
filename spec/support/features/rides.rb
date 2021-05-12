module Features

  def add_new_ride(location, date, time, distance, level, group_size, title)
    click_link "Add a new ride"
    fill_in "Location", with: location
    fill_in "Level", with: level
    fill_in "Distance", with: distance
    fill_in "Date", with: date
    fill_in "Time", with: time
    fill_in "Group size", with: group_size
    fill_in "Title", with: title
    click_button "Create ride"
  end

  def display_successful_ride_creation
     have_css "div", text: "notice: Ride created successfully!!"
  end

end
