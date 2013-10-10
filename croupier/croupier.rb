$:.push(File.join(File.dirname(__FILE__), 'lib/api'))
$:.push(File.join(File.dirname(__FILE__)))

require 'thrift'
require_relative 'lib/api/croupier'

module Croupier

  autoload :Bet, 'lib/bet'
  autoload :Croupier, 'lib/croupier'
  autoload :Deck, 'lib/deck'
  autoload :Handler, 'lib/handler'
  autoload :Player, 'lib/player'
  autoload :PlayerBuilder, 'lib/player_builder'
  autoload :TestFramework, 'lib/test_framework'

  class << self
    def logger
      @logger ||= Logger.new(STDOUT)
    end
  end
end

