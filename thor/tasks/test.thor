# frozen_string_literal: true

require 'thor'

# @private
class Test < Thor
  include Thor::Actions

  desc('rspec', 'Run RSpec tests.')
  def rspec
    run('rspec')
  end
end
