require "lita"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/vancouver_happy_hour"

Lita::Handlers::VancouverHappyHour.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)