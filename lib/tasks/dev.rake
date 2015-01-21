namespace :dev do

  desc "Rebuild system"
  task :build => ['db:drop', 'db:create', 'db:migrate', 'db:seed']

  desc "Build development data"
  task :setup => :build do
    (1..20).each do |video|
      video = Video.create!(
        title: 'Demo Video',
        introduce: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        rtmp_host: 'rtmp://cp67126.edgefcs.net/ondemand&mp4:mediapm', 
        rtmp_path: '/ovp/content/test/video/spacealonehd_sounas_640_300.mp4')
      (1..rand(1..5)).each do |i|
        video.tags.create!(title: "tag #{i}")
        video.girls.create!(title: "actor #{i}")
      end
    end
  end
end