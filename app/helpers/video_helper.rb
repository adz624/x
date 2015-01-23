module VideoHelper
  def render_player(video, opt={})
    options = opt.merge(flashplayer: '/player.swf', provider: '', width: '100%', file: video.rtmp_fullpath)
    jwplayer(options)
  end
end