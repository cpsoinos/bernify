backgrounds = [
  File.new("#{Rails.root}/app/assets/images/seeds/backgrounds/background1.jpg"),
  File.new("#{Rails.root}/app/assets/images/seeds/backgrounds/bm14-166.jpg")
]

stickers = [
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/030408-sanders.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/100506_bernie_sanders_shinkle_218.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/121005120813-bernie-sanders-story-top.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/1401156924000-Bernie-Sanders.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/bernie_sanders_ap_img_0.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/izrJ6Ol4wEGw.png"),
  File.new("#{Rails.root}/app/assets/images/seeds/stickers/o-BERNIE-SANDERS-POPE-facebook.png"),
]

backgrounds.each do |background|
  b = Background.new
  b.image = img
  b.save
end

stickers.each do |sticker|
  s = Sticker.new
  s.image = sticker
  s.save
end
