# frozen_string_literal: true

require 'active_support/core_ext/string/inflections'
require 'thor'
require_relative '../utils'

# @private
class Generate < Thor::Group
  include Thor::RakeCompat
  include Thor::Actions
  include Utils

  argument :name
  desc('Name of the API endpoint.')
  def self.source_root
    File.expand_path('templates', __dir__)
  end

  # Create a model file Warframe::Models::ModelName
  def create_model_file
    template(template_dir('api_model'), "./lib/warframe/models/#{get_class_file_name name.singularize}")
  end

  # Creates a route module Warframe::REST::API::ModuleName
  def create_route_file
    template(template_dir('api_route'), "./lib/warframe/rest/api/#{get_class_file_name name}")
  end

  # Adds the newly created module to the API Module
  def modify_api_module
    @files = Dir.glob("#{api_directory}/api/*.rb").sort.map { |file| File.basename(file).gsub('.rb', '') }
    @constants = @files.map { |file| file.gsub('.rb', '').camelize }
    template(template_dir('api_module'), './lib/warframe/rest/api.rb')
  end

  private

  def api_directory
    './lib/warframe/rest'
  end

  def api_file_path
    "#{api_directory}/api.rb"
  end

  def get_class_file_name(name)
    "#{name.underscore}.rb"
  end

  def get_classified_name(name)
    name.camelcase
  end
end
