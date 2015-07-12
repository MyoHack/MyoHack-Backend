class ConnectedController < WebsocketRails::BaseController
  def client_connected
    puts message
    trigger_success "Welcome"
  end

  def hit
    puts "received hit" + message
    WebsocketRails[:sound].trigger(:sound, "hit" );
    puts "sending to sound socket"
    trigger_success "play hit"
    puts "PLAYED HIT"
  end
end
