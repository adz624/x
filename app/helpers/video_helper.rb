module VideoHelper
  def render_player(video, opt={})
    options = opt.merge(flashplayer: '/player.swf',
                        provider: '',
                        width: '100%',
                        height: '800',
                        file: video.rtmp_fullpath,
                        image: video.image_path)
    jwplayer(options)
  end
end