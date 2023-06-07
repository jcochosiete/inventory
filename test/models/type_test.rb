require "test_helper"

class TypeTest < ActiveSupport::TestCase
  test "Is invalid whidout name" do
     invalid_case = Type.new
     #assert invalid_case.invalid?
     refute invalid_case.valid?

   end
end
