# frozen_string_literal: true

require 'thor'
require 'thor/rake_compat'
require 'rubocop/rake_task'

# @private
class Style < Thor
  include Thor::RakeCompat

  RuboCop::RakeTask.new(:lint)

  RuboCop::RakeTask.new(:lint_auto) do |t|
    t.options = %w[-A --extra-details]
  end

  desc('lint', 'Run RuboCop tests.')
  def lint
    Rake::Task['lint'].invoke
  end

  desc('fix', 'Run RuboCop tests and attempt auto-fix.')
  def fix
    Rake::Task['lint_auto'].invoke
  end
end
