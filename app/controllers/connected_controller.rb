class ConnectedController < WebsocketRails::BaseController
  def client_connected
    puts message
    trigger_success "Welcome"
  end

  def hit
    puts "received hit, playing " + message
    WebsocketRails[:sound].trigger(:hit, message );
    trigger_success "play hit"
  end

  def kick
    puts "received kick, playing " + message
    WebsocketRails[:sound].trigger(:kick, message );
    trigger_success "play kick"
  end

  def snare
    puts "received snare, playing " + message
    WebsocketRails[:sound].trigger(:snare, message );
    trigger_success "play snare"
  end
end
