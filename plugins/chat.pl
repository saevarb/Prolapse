:- module(
     chat,
     [plugin/2]
   ).



plugin(raw("MESSAGE_CREATE"), chat:chat_plugin).

chat_plugin(Msg) :-
    get_dict(author, Msg.d, Author) ->
        format("~s says: ~s\n", [Author.username, Msg.d.content]).
