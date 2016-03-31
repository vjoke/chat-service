
util = require 'util'

# TODO
# ChatService errors.
class ChatServiceError

  # @property [Object] Error strings.
  @::errorStrings =
    badArgument : 'Bad argument %s value %s'
    invalidName : 'String %s contains invalid characters'
    noCommand : 'No such command %s'
    noList : 'No such list %s'
    noLogin : 'No login provided'
    noRoom : 'No such room %s'
    noSocket : 'Command %s requires a valid socket'
    noUser : 'No such user %s'
    noUserOnline : 'No such user online %s'
    notAllowed : 'Action is not allowed'
    notJoined : 'Not joined to room %s'
    roomExists : 'Room %s already exists'
    serverError : 'Server error %s'
    unknownError : 'Unknown error %s occurred'
    userExists : 'User %s already exists'
    wrongArgumentsCount : 'Expected %s arguments, got %s'

  # @property [String] Error key in errorStrings.
  name: 'unknownError'

  # @property [Array<String>] Error arguments.
  args: []

  # @private
  # @nodoc
  constructor : (@name, @args...) ->

  # @private
  # @nodoc
  toString : () ->
    str = @errorStrings[@name] || @name.unknownError
    util.format str, @args...

util.inherits ChatServiceError, Error


module.exports = ChatServiceError