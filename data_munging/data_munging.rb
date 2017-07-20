class WeatherDataMunging
  def initialize stream
    @data = []
    while !stream.eof?
      line = stream.readline
      if line =~ data_pattern
        process line
      end
    end
  end

  def data_pattern
    /^\s+\d+\s+\d+\s+\d+/
  end

  def process line
    values = line.strip.split(/\s+/)
    @data << { number: values[0].to_i, max: values[1].to_i, min: values[2].to_i }
  end

  def minimum_spread_day
    @data.min_by {|day| day[:max] - day[:min] }[:number]
  end
end

class FootballDataMunging
  def initialize stream
    @data = []
    while !stream.eof?
      line = stream.readline
      process line if line =~ data_pattern
    end
  end

  def data_pattern
    /^\s+\d+\.\s\w+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+-\s+\d+/
  end

  def process line
    values = line.strip.split(/\s+/)
    @data << { name: values[1], for: values[6].to_i, against: values[8].to_i }
  end

  def minimum_difference_team
    @data.min_by {|team| (team[:for] - team[:against]).abs }[:name]
  end
end
