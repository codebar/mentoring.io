namespace :db do 
  desc 'Generates tokens for any Classifieds that are without a token'

  task :generate_tokens => :environment do
   Classified.where(:url_token => nil).update_all(url_token: SecureRandom.hex[3,7].upcase)
  end
end
