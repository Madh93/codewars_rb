require 'rake/testtask'
require 'optparse'
require 'fileutils'

task default: :test

desc 'Run tests'
task :test do
  Rake::TestTask.new do |t|
    t.libs << "lib"
    t.test_files = FileList['spec/*_spec.rb', 'spec/lib/kata/*/*_spec.rb']
    # t.verbose = true
  end
end

namespace :kata do

  desc 'Create a new kata'
  task :create do
    options = { kyu: nil, name: nil }
    option_parser = OptionParser.new do |opts|
      opts.banner = "Usage: rake kata:create [options]"
      opts.on('-k', '--kyu LEVEL') { |k| options[:kyu] = k }
      opts.on('-n', '--name NAME') { |n| options[:name] = n }
    end

    # return `ARGV` with the intended arguments
    # http://www.mikeball.info/blog/rake-option-parser/
    args = option_parser.order!(ARGV) {}
    option_parser.parse!(args)

    raise OptionParser::MissingArgument if options.values.any?(&:nil?)

    # Sanitize kata name
    kata = options[:name].downcase.gsub(/[^0-9A-Za-z.\-]/, '_')
    level = options[:kyu]
    kyu_path = "lib/kata/kyu#{level}"

    # Create Kyu directories
    Dir.mkdir(kyu_path) unless Dir.exist?(kyu_path)
    Dir.mkdir("spec/#{kyu_path}") unless Dir.exist?("spec/#{kyu_path}")

    # Add requires
    requires_file = "#{kyu_path}.rb"
    if !File.exist?(requires_file)
      File.open(requires_file, 'w') do |f|
        f << "$LOAD_PATH << File.expand_path('../kyu#{level}', __FILE__)\n\n"
      end
    end

    File.open(requires_file, 'a') { |f| f << "require '#{kata}/#{kata}'\n" }

    # Create Kata directory
    if Dir.exist?("#{kyu_path}/#{kata}")
      puts "Kata '#{kata}' already exists!"
      exit
    end

    Dir.mkdir("#{kyu_path}/#{kata}")

    File.open("#{kyu_path}/#{kata}/#{kata}.rb", 'w') do |f|
      f << "module Kata\n"
      f << "  module Kyu#{level}\n"
      f << "    class << self\n\n"
      f << "      def #{kata}\n"
      f << "      end\n\n"
      f << "    end\n"
      f << "  end\n"
      f << "end\n"
    end

    File.open("#{kyu_path}/#{kata}/README.md", 'w') do |f|
      f << "# #{options[:name]}\n\n"
      f << "[Link]()\n\n"
      f << "## Instructions\n\n"
    end

    File.open("spec/#{kyu_path}/#{kata}_spec.rb", 'w') do |f|
      f << "require 'spec_helper'\n\n"
      f << "describe Kata::Kyu#{level} do\n"
      f << "  it '' do\n"
      f << "  end\n"
      f << "end\n"
    end

    puts "Created a new Kyu #{level} kata: '#{kata}'"
  end

  desc 'Delete a kata'
  task :delete do
    options = { kyu: nil, name: nil }
    option_parser = OptionParser.new do |opts|
      opts.banner = "Usage: rake kata:create [options]"
      opts.on('-k', '--kyu LEVEL') { |k| options[:kyu] = k }
      opts.on('-n', '--name NAME') { |n| options[:name] = n }
    end

    args = option_parser.order!(ARGV) {}
    option_parser.parse!(args)

    raise OptionParser::MissingArgument if options.values.any?(&:nil?)

    kata = options[:name]
    level = options[:kyu]
    kyu_path = "lib/kata/kyu#{level}"

    if !Dir.exist?("#{kyu_path}/#{kata}")
      puts "Kata '#{kata}' does not exist!"
      exit
    end

    FileUtils.rm_rf("#{kyu_path}/#{kata}")

    # Remove requieres
    requires_file = "#{kyu_path}.rb"
    File.open("#{requires_file}.tmp", "w") do |out_file|
      File.foreach(requires_file) do |line|
        out_file.puts line unless line == "require '#{kata}/#{kata}'"
      end
    end

    FileUtils.mv("#{requires_file}.tmp", requires_file)

    if File.exist?("spec/#{kyu_path}/#{kata}_spec.rb")
      File.delete("spec/#{kyu_path}/#{kata}_spec.rb")
    end

    puts "Deleted the Kyu #{options[:kyu]} kata: '#{options[:name]}'"
  end

  desc 'List all katas'
  task :list do
    options = { kyu: nil }
    option_parser = OptionParser.new do |opts|
      opts.banner = "Usage: rake kata:create [options]"
      opts.on('-k', '--kyu LEVEL') { |k| options[:kyu] = k }
    end

    args = option_parser.order!(ARGV) {}
    option_parser.parse!(args)

    puts "Filtering by Kyu #{options[:kyu]}:\n" unless options[:kyu].nil?

    katas = 'lib/kata'
    Dir.entries(katas).reject { |e| e.include?('.') }.each do |level|
      next unless (level[-1] == options[:kyu]) || options[:kyu].nil?
      puts "\nKyu #{level[-1]}:"
      Dir.entries("#{katas}/kyu#{level[-1]}").reject { |e| e.include?('.') }.each do |k|
        puts "    #{k}"
      end
    end
  end
end
