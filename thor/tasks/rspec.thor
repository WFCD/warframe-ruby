# frozen_string_literal: true

require 'thor'
require 'thor/rake_compat'
require 'rspec/core/rake_task'

# @private
class Rspec < Thor
  RSpec::Core::RakeTask.new(:test)

  desc('test', 'Run RSpec tests.')
  def test
    Rake::Task['test'].invoke
  end
end
