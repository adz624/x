namespace :production do

  desc "Import Data"
  task :import => :environment do
    puts "Importing ... "
    begin
      sql = File.read('../sql.sql')
      statements = sql.split(/;$/)
      statements.pop
      ActiveRecord::Base.transaction do
        statements.each do |statement|
          ActiveRecord::Base.connection.execute(statement)
        end
      end
      puts "Done!"
    rescue Exception => e
      puts "Faild! => #{e}"
    end
  end
end