#!/usr/bin/env ruby

# file: ferrexi.rb

require 'ferrum'
require 'rexle'


class Ferrexi

  attr_reader :to_doc

  def initialize(url, debug: false)
    
    browser = Ferrum::Browser.new
    browser.goto(url)
    
    # without the following statement the DOM probably won't have loaded yet.
    # As a result, falls back to returning the original document source
    
    browser.network.wait_for_idle 
    
    @to_doc = Rexle.new(browser.body, debug: debug)
    
  end
  
end

