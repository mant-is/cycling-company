require 'factory_bot'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

   config.before(:each) do |example|
     DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction
     DatabaseCleaner.start
   end

   config.after(:each) do
     DatabaseCleaner.clean
   end
end
#  config.before(:suite) do
#    begin
#      DatabaseCleaner.start
#      FactoryBot.lint
#    ensure
#      DatabaseCleaner.clean
#    end
#  end

