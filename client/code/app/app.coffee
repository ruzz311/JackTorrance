### TONY'S NOT HERE MRS. TORRANCE ####
content     = "All work and no play makes Jack a dull boy."
content_arr = content.split('')
content_len = content_arr.length
curindex    = 0
timeres     = 200

$p = $('p')

heresJohnny = ()->
  $p.append content_arr[curindex]
  
  if curindex < content_len
    curindex += 1
  else
    curindex = 0
    
  setTimeout( heresJohnny,  timeres )
  
setTimeout( heresJohnny,  timeres )



#call a rpc
#ss.rpc('demo.sendMessage', text, cb)

# Listen out for newMessage events coming from the server
#ss.event.on 'message', (message) ->

###
# Example of using the Hogan Template in client/templates/chat/message.jade to generate HTML for each message
  html = ss.tmpl['chat-message'].render
    message: message
    time: -> (new Date()).getTime()
###
