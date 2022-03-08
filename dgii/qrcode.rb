require 'rqrcode'

url    = 'https://aheer98.github.io/docs/cppp.aspx.html'

qrcode = RQRCode::QRCode.new(url)

png = qrcode.as_png(
  bit_depth: 1,
  border_modules: 4,
  color_mode: ChunkyPNG::COLOR_GRAYSCALE,
  color: "black",
  file: nil,
  fill: "white",
  module_px_size: 6,
  resize_exactly_to: false,
  resize_gte_to: false,
  size: 512
)

IO.binwrite("qrcodes/qrcode.#{ Time.now.to_i }.png", png.to_s)
