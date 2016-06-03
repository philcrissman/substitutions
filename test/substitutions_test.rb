require 'test_helper'

require 'substitutions'

class SubstitutionsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Substitutions::VERSION
  end

  def test_it_substitutes
    substitutions = Substitutions::Text.new("Witnesses allegedly saw a Senator who could not be reached for comment")
    expected = "these dudes I know kinda probably saw a Elf-Lord who is guilty and everyone knows it"
    assert_equal expected, substitutions.substitute!
  end
end
