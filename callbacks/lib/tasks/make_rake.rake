desc 'Say hello!'
task :hello_world do
  puts "Hello"
end

desc 'Make Apple Juice'
task :make_juice => :environment do
  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }
  a = Apple.create
end