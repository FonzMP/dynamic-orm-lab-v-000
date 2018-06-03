require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize(options={})
    options.each do |property, value|
      send.send("#{property}=", value)
    end
  end

end
