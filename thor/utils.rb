# frozen_string_literal: true

# @private
module Utils
  def template_dir(file_name)
    "#{__FILE__}/../templates/#{file_name}.erb"
  end
end
