%%
%% Autogenerated by Thrift Compiler (0.9.1)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(playerStrategy_thrift).
-behaviour(thrift_service).


-include("playerStrategy_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info('i am a dummy struct') -> undefined.
%%% interface
% name(This)
function_info('name', params_type) ->
  {struct, []}
;
function_info('name', reply_type) ->
  string;
function_info('name', exceptions) ->
  {struct, []}
;
% bet_request(This, Pot, Limits)
function_info('bet_request', params_type) ->
  {struct, [{1, i64},
          {2, {struct, {'types_types', 'betLimits'}}}]}
;
function_info('bet_request', reply_type) ->
  i64;
function_info('bet_request', exceptions) ->
  {struct, []}
;
% competitor_status(This, Competitor)
function_info('competitor_status', params_type) ->
  {struct, [{1, {struct, {'types_types', 'competitor'}}}]}
;
function_info('competitor_status', reply_type) ->
  {struct, []};
function_info('competitor_status', exceptions) ->
  {struct, []}
;
% bet(This, Competitor, Bet)
function_info('bet', params_type) ->
  {struct, [{1, {struct, {'types_types', 'competitor'}}},
          {2, {struct, {'types_types', 'bet'}}}]}
;
function_info('bet', reply_type) ->
  {struct, []};
function_info('bet', exceptions) ->
  {struct, []}
;
% hole_card(This, Card)
function_info('hole_card', params_type) ->
  {struct, [{1, {struct, {'types_types', 'card'}}}]}
;
function_info('hole_card', reply_type) ->
  {struct, []};
function_info('hole_card', exceptions) ->
  {struct, []}
;
% community_card(This, Card)
function_info('community_card', params_type) ->
  {struct, [{1, {struct, {'types_types', 'card'}}}]}
;
function_info('community_card', reply_type) ->
  {struct, []};
function_info('community_card', exceptions) ->
  {struct, []}
;
% showdown(This, Competitor, Cards, Hand)
function_info('showdown', params_type) ->
  {struct, [{1, {struct, {'types_types', 'competitor'}}},
          {2, {list, {struct, {'types_types', 'card'}}}},
          {3, {struct, {'types_types', 'handDescriptor'}}}]}
;
function_info('showdown', reply_type) ->
  {struct, []};
function_info('showdown', exceptions) ->
  {struct, []}
;
% winner(This, Competitor, Amount)
function_info('winner', params_type) ->
  {struct, [{1, {struct, {'types_types', 'competitor'}}},
          {2, i64}]}
;
function_info('winner', reply_type) ->
  {struct, []};
function_info('winner', exceptions) ->
  {struct, []}
;
function_info(_Func, _Info) -> no_function.

