require 'rubygems'
require 'bundler/setup'
require 'thor'
require 'tilt'

module LivingStyleGuide
  class CommandLineInterface < Thor

    desc 'compile filename', 'Compiles the living style guide to HTML.'
    def compile(file)
      output_file = file.sub(/\.lsg$/, '')
      if defined?(Compass)
        Compass.add_project_configuration 
        output_file.sub! /^#{Compass.configuration.sass_dir}/, Compass.configuration.css_dir
      end
      html = Tilt.new(file).render
      File.write output_file, html
      puts "Successfully generated a living style guide at #{output_file}."
    end

  end
end

