require 'sinatra/base'
require 'date'


# START BLOCK A
# This block is only executed once on load
$config = 0
MY_DATA = 0
# END BLOCK A


class MyApp < Sinatra::Base


  def initialize
    super()
    @x = 0
    @@x = 0

  end

  get "/" do
    # This function is executed with every request. The $config var value is retained
    # Keep in mind that rackup only creates a new instance of the MyApp every time. So @vars are resetted, but class vars etc. are retained
    return "All vars are booted with a value of 0. $config: #{$config};  MY_DATA: #{MY_DATA}; @x: #{@x}; @@x: #{@@x}"
  end

  get "/inc_x" do
    @x += 1
    return "OK"

  end


  get "/inc_config" do
    $config += 1
    return "OK"

  end

  get "/inc_my_data" do
    MY_DATA += 1
    return "OK"

  end


  get "/inc_self_x" do
    @@x += 1
    return "OK"
  end


end


