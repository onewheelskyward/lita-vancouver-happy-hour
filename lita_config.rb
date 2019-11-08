Lita.configure do |c|
  c.robot.log_level = :debug
  c.http.port = 8888
  c.robot.alias = '!'
  c.adapter = :shell
end
