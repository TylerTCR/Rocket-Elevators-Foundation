require "addressy/version"
require "addressy/helper"
require "yaml"

ADDRESSES = YAML.load_file("#{File.expand_path(File.dirname(__FILE__))}/../data/addresses.yml").values

module Addressy
  module US
    def self.fetch(n, opts = {})
      ADDRESSES.sample(n).map do |info|
        Address.new(info) 
      end
    end
  end

  class Address
    attr_reader :street, :city, :country

    def initialize(info)
      @street = info.fetch("Address")
      @city = info.fetch("City")
      @state = info.fetch("State")
      @zip = info.fetch("Zip")
      @country = info.fetch("Country")
    end

    def state(name = false)
      name ? ::Addressy::US::Helper::STATES[@state] : @state
    end

    def zip(simple = false)
      simple ? @zip[0..4] : @zip
    end

    def full
      "#{@street}, #{@city}, #{@state} #{@zip}, #{@country}"
    end

    alias_method :to_s, :full
  end
end
