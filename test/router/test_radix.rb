require File.expand_path('../helper', __dir__)

class TestLiner < Test::Unit::TestCase
  include Supports::SharedExamplesForRouting
  router_class Pendragon::Radix
  disable :multiple_splats, :cascading
end
