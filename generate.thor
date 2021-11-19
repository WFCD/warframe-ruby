# frozen_string_literal: true

require 'active_support/core_ext/string/inflections'
require 'thor'
require 'warframe'
require 'rubocop/rake_task'

# @private
class Generate < Thor::Group
  include Thor::RakeCompat
  include Thor::Actions

  argument :name
  def self.source_root
    File.dirname(__FILE__)
  end

  # Create a model file Warframe::Models::ModelName
  def create_model_file
    template('templates/api_model_template.erb', "./lib/warframe/models/#{get_class_file_name name.singularize}")
  end

  # Creates a route module Warframe::REST::API::ModuleName
  def create_route_file
    template('templates/api_route_template.erb', "./lib/warframe/rest/api/#{get_class_file_name name}")
  end

  # Adds the newly created module to the API Module
  def modify_api_module
    @files = Dir.glob("#{api_directory}/api/*.rb").sort.map { |file| File.basename(file).gsub('.rb', '') }
    # @files.push name.underscore
    @constants = @files.map { |file| file.gsub('.rb', '').camelize }
    template('templates/api_module_template.erb', './lib/warframe/rest/api.rb')
  end

  def lint
    RuboCop::RakeTask.new(:lint) do |t|
      t.options = %w[-A --extra-details]
    end

    Rake::Task['lint'].invoke
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
