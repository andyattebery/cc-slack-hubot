# Description:
#   Table flipping
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   fuck it - Table flip
#   crabot calm down - Unflip table or retaliate 
#
# Author:
#  anirbanmu 

flipReplies = ['(╯°□°）╯︵ ┻━┻', '(ノಠ益ಠ)ノ彡┻━┻', '┬──┬ ¯\_(ツ)', '┻━┻ ︵ヽ(`Д´)ﾉ︵ ┻━┻']
unflipReplies = ['┬──┬◡ﾉ(° -°ﾉ)', '(╯°Д°）╯︵/(.□ . )', '(ノಠ ∩ಠ)ノ彡( o°o)', '凸(⊙▂⊙✖ )', '¯\_(ツ)_/¯']

module.exports = (robot) ->
  robot.hear /fuck it/i, (msg) ->
    msg.emote msg.random flipReplies

  robot.respond /calm down/i, (msg) ->
    reply = msg.random unflipReplies
    if reply == '凸(⊙▂⊙✖ )' 
      msg.reply reply
    else
      msg.send reply

