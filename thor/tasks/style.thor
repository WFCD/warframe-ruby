# frozen_string_literal: true

require 'thor'

# @private
class Style < Thor
  include Thor::Actions

  desc('lint', 'Run RuboCop tests.')
  def lint
    run('rubocop --extra-details')
  end

  desc('fix', 'Run RuboCop tests and attempt auto-fix.')
  def fix
    run('rubocop -A --extra-details')
  end
end
