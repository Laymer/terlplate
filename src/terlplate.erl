%%% ----------------------------------------------------------------------------
%%% @author {{author}} <{{email}}>
%%%     [{{link}}]
%%% @doc
%%%         High level API module.
%%% @end

%% -----------------------------------------------------------------------------
-module({{name}}).
-author('{{author}}').
%% -----------------------------------------------------------------------------
%% Exports:

%% API:
-export([start/0]).
-export([stop/0]).

%% -----------------------------------------------------------------------------
%% API:

-spec
start() ->
    ok | {'error',{atom(),_}}.
%% @doc
%%     Starts {{name}} application.
%% @end
start() ->
    case application:ensure_all_started({{name}}) of
        {ok, _} ->
            ok;
        Err ->
            Err
    end.


-spec
stop() ->
    ok.
%% @doc
%%     Stops {{name}} application.
%% @end
stop() ->
    application:stop({{name}}).
