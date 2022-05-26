#!/usr/bin/env ruby

# file: ferrexi.rb

require 'ferrum'
require 'nokorexi'


class Ferrexi

  attr_reader :to_doc

  def initialize(url, wait: 0, debug: false)

    browser = Ferrum::Browser.new
    browser.goto(url)

    # without the following statement the DOM probably won't have loaded yet.
    # As a result, falls back to returning the original document source

    browser.network.wait_for_idle
    sleep wait

    @to_doc = Nokorexi.new(browser.body).to_doc

  end

end
