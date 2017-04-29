$config = 0
app = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{$config+=1}"]] }

run app