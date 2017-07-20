require 'rspec'
require_relative '../data_munging'

describe WeatherDataMunging do
  let(:data){ File.open 'weather.dat' }

  describe '.new' do
    it 'takes a stream with weather data' do
      weather_data = WeatherDataMunging.new data
      expect(weather_data).to be_truthy
    end
  end

  describe '#minimum_spread_day' do
    it 'returns the day number with the least difference between max and min temperature' do
      weather_data = WeatherDataMunging.new data
      expect(weather_data.minimum_spread_day).to eq 14
    end
  end
end

describe FootballDataMunging do
  let(:data){ File.open 'football.dat' }

  describe '.new' do
    it 'takes a stream with weather data' do
      football_data = FootballDataMunging.new data
      expect(football_data).to be_truthy
    end
  end

  describe '#minimum_difference_team' do
    it 'returns the team with the min difference between scored against and for' do
      football_data = FootballDataMunging.new data
      expect(football_data.minimum_difference_team).to eq 'Aston_Villa'
    end
  end
end
