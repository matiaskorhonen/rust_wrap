# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rb_sys/extensiontask"

task build: :compile

RbSys::ExtensionTask.new("rust_wrap") do |ext|
  ext.lib_dir = "lib/rust_wrap"
end

task default: %i[compile spec]
