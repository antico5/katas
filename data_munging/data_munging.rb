class DataMunging
  def initialize stream
    @data = []
    while !stream.eof?
      line = stream.readline
      if line =~ data_pattern
        process line.strip.split(/\s+/)
      end
    end
  end
end

class WeatherDataMunging < DataMunging
  def data_pattern
    /^\s+\d+\s+\d+\s+\d+/
  end

  def process values
    @data << { number: values[0].to_i, max: values[1].to_i, min: values[2].to_i }
  end

  def minimum_spread_day
    @data.min_by {|day| day[:max] - day[:min] }[:number]
  end
end

class FootballDataMunging < DataMunging
  def data_pattern
    /^\s+\d+\.\s\w+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+-\s+\d+/
  end

  def process values
    @data << { name: values[1], for: values[6].to_i, against: values[8].to_i }
  end

  def minimum_difference_team
    @data.min_by {|team| (team[:for] - team[:against]).abs }[:name]
  end
end
