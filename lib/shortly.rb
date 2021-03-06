require 'uri'
require 'ostruct'
require 'json'
require 'httparty'
require 'shortly'
require 'shortly/helper'
require 'shortly/errors'
require 'shortly/client'
require 'shortly/clients/bitly'
require 'shortly/clients/jmp'
require 'shortly/clients/googl'
require 'shortly/clients/isgd'
require 'shortly/clients/lggd'
require 'shortly/clients/tinyurl'
require 'shortly/clients/vgd'

module Shortly
  
  #gem version
  def self.version #:nodoc
    File.read(File.join(File.dirname(__FILE__), '..', 'VERSION'))
  end
  
  #returns active services
  def self.active_services
    Client.registered
  end
  
  Helper::MonkeyPatches.activate!
  
end