namespace :sample_data do
  desc "Populate with sample data"
  task populate: :environment do
    puts "Creating locations ...."
    create_locations
    puts "Creating whitelabels...."
    create_whitelabels
    puts "Creating categories...."
    create_categories
    puts "Creating durations...."
    create_durations
    puts "Creating qualities...."
    create_quality
    puts "Creating deliveries...."
    create_deliveries
    puts "Creating performers...."
    create_performers
  end

  def create_locations
    location_name.each do |name|
      location = Location.new(name: name)
      puts "The location #{location.name} is saved" if location.save
    end
  end
  def location_name
    %w{US Canada UK}
  end

  def create_whitelabels
    whitelabel = { "US"=> "avm_studio", "UK" => "dio888"}

    whitelabel.each do |index, value|
      location = Location.find_by(name: index)
      puts "location---"
      p location
      w_label = location.white_labels.build(name: value, email: "#{value}@abcd.com", password: 'password1234', password_confirmation: 'password1234')
      p w_label
      puts "The w_label #{w_label.name} is saved" if w_label.save
    end
  end

  def create_categories
    category_names.each do |name|
      c = ClipCategory.new(name: name)
      puts "The category #{c.name} is saved" if c.save
    end
  end
  def category_names
    ["Ass worship", "Financial domination", "Foot worship", "Glamour/Need"]
  end

  def create_durations
    duration_names.each do |name|
      c = Duration.new(time: name)
      puts "The duration #{c.time} is saved" if c.save
    end
  end
  def duration_names
    ["10 minutes", "15 minutes", "30 minutes"]
  end

  def create_quality
    quality_names.each do |name|
      c = Quality.new(name: name)
      puts "The quality #{c.name} is saved" if c.save
    end
  end
  def quality_names
    ["HD", "Standard", "3D"]
  end

  def create_deliveries
    delivery_names.each do |name|
      c = DeliveryTime.new(duration: name)
      puts "The quality #{c.duration} is saved" if c.save
    end
  end
  def delivery_names
    ["Standard(14 days)", "Premier (7 days)"]
  end

  def create_performers
    w = WhiteLabel.first
    perf = w.performers.build(name: 'Ella Jollie', email: 'ella@sdsk.com', password: 'ella1234', password_confirmation: 'ella1234', avatar: 'ella.gif')
    perf.location = w.location
    if perf.save
      puts "The perf #{perf.inspect} is saved for #{w.name}"
      perf.clip_categories << ClipCategory.limit(2)
      perf.durations << Duration.limit(2)
      perf.qualities << Quality.limit(1)
      perf.delivery_times << DeliveryTime.limit(1)
    end
    w = WhiteLabel.last
    perf = w.performers.build(name: 'Amylu Bennet', email: 'amylu@sdsk.com', password: 'ella1234', password_confirmation: 'ella1234', avatar: 'amylu.gif')
    perf.location = w.location
    if perf.save
      puts "The perf #{perf.inspect} is saved for #{w.name}"
      perf.clip_categories << ClipCategory.limit(4)
      perf.durations << Duration.limit(1)
      perf.qualities << Quality.limit(2)
      perf.delivery_times << DeliveryTime.limit(2)
    end
    w = WhiteLabel.first
    perf = w.performers.build(name: 'Smoke Bennet', email: 'smoke@sdsk.com', password: 'ella1234', password_confirmation: 'ella1234', avatar: 'smoke.gif')
    perf.location = w.location
    if perf.save
      puts "The perf #{perf.inspect} is saved for #{w.name}"
      perf.clip_categories << ClipCategory.limit(3)
      perf.durations << Duration.limit(3)
      perf.qualities << Quality.limit(1)
      perf.delivery_times << DeliveryTime.limit(1)
    end
  end
end
