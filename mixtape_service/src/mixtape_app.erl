%%%-------------------------------------------------------------------
%% @doc mixtape public API
%% @end
%%%-------------------------------------------------------------------

-module(mixtape_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
  mixtape_cowboy_server:start(),
  mixtape_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
  ok.
