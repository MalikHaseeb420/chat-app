App.chat = App.cable.subscriptions.create('ChatChannel',
  connected: ->
    console.log 'connected to chat channel'
    return
  disconnected: ->
    console.log 'Disconnected to chat channel'
    return
  received: (data) ->
    console.log 'recieved', data
    $('#messages').append data['message']
    return
)

