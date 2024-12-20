require_relative "timemaster/version"
require 'date' 

module Timemaster
  class Error < StandardError; end

  def self.calculate_format(input)
    case input.length
    when 8
      "%m%d%Y"
    when 10
      if input.include?('/')
        "%m/%d/%Y"
      elsif input.include?('-')
        "%m-%d-%Y"
      else
        raise ArgumentError, "Invalid date format"
      end
    when 6
      "%m%d%y"
    when 8
      if input.include?('/')
        "%m/%d/%y"
      elsif input.include?('-')
        "%m-%d-%y"
      else
        raise ArgumentError, "Invalid date format"
      end
    else
      raise ArgumentError, "Invalid date format"
    end
  end

  def self.calculate_format_european(input)
    case input.length
    when 8
      "%d%m%Y"
    when 10
      if input.include?('/')
        "%d/%m/%Y"
      elsif input.include?('-')
        "%d-%m-%Y"
      else
        raise ArgumentError, "Invalid date format"
      end
    when 6
      "%d%m%y"
    when 8
      if input.include?('/')
        "%d/%m/%y"
      elsif input.include?('-')
        "%d-%m-%y"
      else
        raise ArgumentError, "Invalid date format"
      end
    else
      raise ArgumentError, "Invalid date format"
    end
  end

  def self.string_to_date(input)
    format = calculate_format(input)
    converted = Date.strptime(input, format)
    puts converted
    return converted
  end

  def self.iso_string_to_date(iso_string)
    converted = DateTime.iso8601(iso_string).to_date
    puts converted
    return converted
  end

  def self.string_to_datetime(input)
    format = calculate_format(input)
    converted = DateTime.strptime(input, format)
    puts converted
    return converted
  end

  def self.iso_string_to_datetime(iso_string)
    converted = DateTime.iso8601(iso_string)
    puts converted
    return converted
  end

  def self.string_to_date_european(input)
    format = calculate_format_european(input)
    converted = Date.strptime(input, format)
    puts converted
    return converted
  end

  def self.string_to_datetime_european(input)
    format = calculate_format_european(input)
    converted = DateTime.strptime(input, format)
    puts converted
    return converted
  end

  def self.date_to_string(input, format="/")
    begin
      case format
      when "/"
        formatted_date = "%02d/%02d/%04d" % [input.month, input.day, input.year]
      when "-"
        formatted_date = "%02d-%02d-%04d" % [input.month, input.day, input.year]
      when ""
        formatted_date = "%02d%02d%04d" % [input.month, input.day, input.year]
      else
        raise ArgumentError, "Invalid format: #{format}"
      end
      puts formatted_date
      return formatted_date
    rescue
      puts "Invalid date format: #{input}"
    end
  end

  def self.date_to_iso_string(input)
    if input.is_a?(Date) || input.is_a?(DateTime)
      iso_string = input.iso8601
      puts iso_string
      return iso_string
    else
      raise ArgumentError, "Input must be a Date or DateTime object"
    end
  end

  class << self
    alias_method :datetime_to_iso_string, :date_to_iso_string
  end

  def self.date_to_string_european_format(input, format="/")
    begin
      case format
      when "/"
        formatted_date = "%02d/%02d/%04d" % [input.day, input.month, input.year]
      when "-"
        formatted_date = "%02d-%02d-%04d" % [input.day, input.month, input.year]
      when ""
        formatted_date = "%02d%02d%04d" % [input.day, input.month, input.year]
      else
        raise ArgumentError, "Invalid format: #{format}"
      end
      puts formatted_date
      return formatted_date
    rescue
      puts "Invalid date format: #{input}"
    end
  end

  def self.datetime_to_string(input, format="/", full=true)
    begin
      if full
        case format
        when "/"
          formatted_datetime = "%02d/%02d/%04d %02d:%02d:%02d" % [input.month, input.day, input.year, input.hour, input.min, input.sec]
        when "-"
          formatted_datetime = "%02d-%02d-%04d %02d:%02d:%02d" % [input.month, input.day, input.year, input.hour, input.min, input.sec]
        when ""
          formatted_datetime = "%02d%02d%04d%02d%02d%02d" % [input.month, input.day, input.year, input.hour, input.min, input.sec]
        else
          raise ArgumentError, "Invalid format: #{format}"
        end
      else
        case format
        when "/"
          formatted_datetime = "%02d/%02d/%04d" % [input.month, input.day, input.year]
        when "-"
          formatted_datetime = "%02d-%02d-%04d" % [input.month, input.day, input.year]
        when ""
          formatted_datetime = "%02d%02d%04d" % [input.month, input.day, input.year]
        else
          raise ArgumentError, "Invalid format: #{format}"
        end
      end
      
      puts formatted_datetime
      return formatted_datetime
    rescue
      puts "Invalid datetime format: #{input}"
    end
  end

  def self.datetime_to_string_european_format(input, format="/", full=true)
    begin
      if full
        case format
        when "/"
          formatted_datetime = "%02d/%02d/%04d %02d:%02d:%02d" % [input.day, input.month, input.year, input.hour, input.min, input.sec]
        when "-"
          formatted_datetime = "%02d-%02d-%04d %02d:%02d:%02d" % [input.day, input.month, input.year, input.hour, input.min, input.sec]
        when ""
          formatted_datetime = "%02d%02d%04d%02d%02d%02d" % [input.day, input.month, input.year, input.hour, input.min, input.sec]
        else
          raise ArgumentError, "Invalid format: #{format}"
        end
      else
        case format
        when "/"
          formatted_datetime = "%02d/%02d/%04d" % [input.day, input.month, input.year]
        when "-"
          formatted_datetime = "%02d-%02d-%04d" % [input.day, input.month, input.year]
        when ""
          formatted_datetime = "%02d%02d%04d" % [input.day, input.month, input.year]
        else
          raise ArgumentError, "Invalid format: #{format}"
        end
      end
      
      puts formatted_datetime
      return formatted_datetime
    rescue
      puts "Invalid datetime format: #{input}"
    end
  end

end