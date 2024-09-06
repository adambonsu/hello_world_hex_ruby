# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

task default: :spec

namespace :dev do
  desc 'Format check'
  task :lint do
    sh 'bundle exec rubocop'
  end
  namespace :lint do
    desc 'Format fix'
    task :fix do
      sh 'bundle exec rubocop -A'
    end
  end
end
