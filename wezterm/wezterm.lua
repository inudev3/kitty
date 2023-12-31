local wezterm = require 'wezterm'

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'tokyonight_night'
  else
    return '3024 Day'
  end
end

function return_bg_image(appearance)
  if appearance:find 'Dark' then
    return '/Users/inust/Downloads/cyberpunk.jpeg'
  else
    return '/Users/inust/Downloads/snow_mountain1.png'
  end
end

if wezterm.config_builder then
  config = wezterm.config_builder()
end
return {
color_scheme = scheme_for_appearance(get_appearance()),
}
