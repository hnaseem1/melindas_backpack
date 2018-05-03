class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def day
    @attributes[:day_of_week]
  end

  def weather
    @attributes[:weather]
  end

  def items
    @items
  end

  def add_pant_shirts
    @items << 'pants'
    @items << 'shirt'
  end

  def check_weather

    if weather == 'rainy'
      add_pant_shirts
      @items << 'umbrella'
    elsif weather == 'cold'
      add_pant_shirts
      @items << 'jacket'
    else
      add_pant_shirts
    end

  end

  def check_day



    # Ensure gym shoes are added to backpack if it's a gym day
    if day == 'monday' || day == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end

    # add items according to the day
    if day != 'saturday' && day != 'sunday'
      @items << 'packed lunch'
    else
      @items << 'snacks'
    end

  end
  def prepare
    # set up functions for preparation
    check_weather
    check_day
  end

  # Prints a summary packing list for Melinda's backpack
  def print_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{day}, Weather: #{weather}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
