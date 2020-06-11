import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Recieving:")
    console.log(data.content)
    console.log(data.content[0].body)
    console.log(data.content[1])
    $('#messages').append('<div id="msg"><p>  ' + data.content[1] + ': ' + data.content[0].body + '</p></div>')
  }
});
