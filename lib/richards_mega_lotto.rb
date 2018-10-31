require "richards_mega_lotto/version"
require "richards_mega_lotto/drawing"
require "richards_mega_lotto/configuration"
require "richards_mega_lotto/railtie"

begin
  require "pry"
rescue LoadError
end

module RichardsMegaLotto
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset
    @configuration = Configuration.new
  end
end
