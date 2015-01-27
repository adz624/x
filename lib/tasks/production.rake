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

  desc "Download Images"
  task :download => :environment do
    require "open-uri"

    Video.where(is_download: false).each do |video|
      video_id = video.id.to_s

      begin
        File.open("/home/rails/apps/x/current/public/shared_images/#{video_id}.jpg", 'wb') do |fo|
          fo.write open(ENV['THUMB_PATH'].gsub(':id', video_id)).read
        end

        File.open("/home/rails/apps/x/current/public/shared_images/#{video_id}-lg.jpg", 'wb') do |fo|
          fo.write open(ENV['IMAGE_PATH'].gsub(':id', video_id)).read
        end
        puts "#{Time.now} => Save! #{video.id}"
        video.update(is_download: true)
      rescue Exception => e
        puts "#{Time.now} => Faild! #{video.id} => #{e.inspect}"
      end
    end
  end
end