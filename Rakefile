require 'rake/testtask'

task default: :test

desc 'Run tests'
task :test do
  Rake::TestTask.new do |t|
    t.libs << "lib"
    t.test_files = FileList['spec/*_spec.rb', 'spec/lib/kata/*/*_spec.rb']
    # t.verbose = true
  end
end
