namespace :richards_mega_lotto do
  desc 'Generate a random lottery drawing'
  task draw: :environment do
    puts RichardsMegaLotto::Drawing.new.draw
  end
end