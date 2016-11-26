require 'bundler/setup'
require File.expand_path('../lib/pendragon/radix', __dir__)

Bundler.require(:default)

require 'test/unit'
require 'mocha/setup'
require 'rack'
require 'rack/test'

module Supports
end

$:.unshift(File.expand_path('..', __dir__))
Dir.glob('test/supports/*.rb').each(&method(:require))
