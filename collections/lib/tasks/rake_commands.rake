desc 'Add Apple to Basket'
task :add_apple_to_basket => :environment do

  Dir.glob("#{Rails.root}/app/models/*.rb").each { |file| require file }
  ARGV.each { |a| task a.to_sym do ; end }

  Basket.add_apple_to_basket(ARGV[1].to_s , ARGV[2].to_i)

end