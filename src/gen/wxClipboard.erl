%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2008-2012. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%
%% This file is generated DO NOT EDIT

%% @doc See external documentation: <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html">wxClipboard</a>.
%% @type wxClipboard().  An object reference, The representation is internal
%% and can be changed without notice. It can't be used for comparsion
%% stored on disc or distributed for use on other nodes.

-module(wxClipboard).
-include("wxe.hrl").
-export([addData/2,clear/1,close/1,destroy/1,flush/1,get/0,getData/2,isOpened/1,
  isSupported/2,new/0,open/1,setData/2,usePrimarySelection/1,usePrimarySelection/2]).

%% inherited exports
-export([parent_class/1]).

-export_type([wxClipboard/0]).
%% @hidden
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

-type wxClipboard() :: wx:wx_object().
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardwxclipboard">external documentation</a>.
-spec new() -> wxClipboard().
new() ->
  wxe_util:construct(?wxClipboard_new,
  <<>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardadddata">external documentation</a>.
-spec addData(This, Data) -> boolean() when
	This::wxClipboard(), Data::wxDataObject:wxDataObject().
addData(#wx_ref{type=ThisT,ref=ThisRef},#wx_ref{type=DataT,ref=DataRef}) ->
  ?CLASS(ThisT,wxClipboard),
  ?CLASS(DataT,wxDataObject),
  wxe_util:call(?wxClipboard_AddData,
  <<ThisRef:32/?UI,DataRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardclear">external documentation</a>.
-spec clear(This) -> ok when
	This::wxClipboard().
clear(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:cast(?wxClipboard_Clear,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardclose">external documentation</a>.
-spec close(This) -> ok when
	This::wxClipboard().
close(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:cast(?wxClipboard_Close,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardflush">external documentation</a>.
-spec flush(This) -> boolean() when
	This::wxClipboard().
flush(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:call(?wxClipboard_Flush,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardgetdata">external documentation</a>.
-spec getData(This, Data) -> boolean() when
	This::wxClipboard(), Data::wxDataObject:wxDataObject().
getData(#wx_ref{type=ThisT,ref=ThisRef},#wx_ref{type=DataT,ref=DataRef}) ->
  ?CLASS(ThisT,wxClipboard),
  ?CLASS(DataT,wxDataObject),
  wxe_util:call(?wxClipboard_GetData,
  <<ThisRef:32/?UI,DataRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardisopened">external documentation</a>.
-spec isOpened(This) -> boolean() when
	This::wxClipboard().
isOpened(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:call(?wxClipboard_IsOpened,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardopen">external documentation</a>.
-spec open(This) -> boolean() when
	This::wxClipboard().
open(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:call(?wxClipboard_Open,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardsetdata">external documentation</a>.
-spec setData(This, Data) -> boolean() when
	This::wxClipboard(), Data::wxDataObject:wxDataObject().
setData(#wx_ref{type=ThisT,ref=ThisRef},#wx_ref{type=DataT,ref=DataRef}) ->
  ?CLASS(ThisT,wxClipboard),
  ?CLASS(DataT,wxDataObject),
  wxe_util:call(?wxClipboard_SetData,
  <<ThisRef:32/?UI,DataRef:32/?UI>>).

%% @equiv usePrimarySelection(This, [])
-spec usePrimarySelection(This) -> ok when
	This::wxClipboard().

usePrimarySelection(This)
 when is_record(This, wx_ref) ->
  usePrimarySelection(This, []).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboarduseprimaryselection">external documentation</a>.
-spec usePrimarySelection(This, [Option]) -> ok when
	This::wxClipboard(),
	Option :: {primary, boolean()}.
usePrimarySelection(#wx_ref{type=ThisT,ref=ThisRef}, Options)
 when is_list(Options) ->
  ?CLASS(ThisT,wxClipboard),
  MOpts = fun({primary, Primary}, Acc) -> [<<1:32/?UI,(wxe_util:from_bool(Primary)):32/?UI>>|Acc];
          (BadOpt, _) -> erlang:error({badoption, BadOpt}) end,
  BinOpt = list_to_binary(lists:foldl(MOpts, [<<0:32>>], Options)),
  wxe_util:cast(?wxClipboard_UsePrimarySelection,
  <<ThisRef:32/?UI, 0:32,BinOpt/binary>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardissupported">external documentation</a>.
-spec isSupported(This, Format) -> boolean() when
	This::wxClipboard(), Format::integer().
isSupported(#wx_ref{type=ThisT,ref=ThisRef},Format)
 when is_integer(Format) ->
  ?CLASS(ThisT,wxClipboard),
  wxe_util:call(?wxClipboard_IsSupported,
  <<ThisRef:32/?UI,Format:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxclipboard.html#wxclipboardget">external documentation</a>.
-spec get() -> wxClipboard().
get() ->
  wxe_util:call(?wxClipboard_Get,
  <<>>).

%% @doc Destroys this object, do not use object again
-spec destroy(This::wxClipboard) -> ok.
destroy(Obj=#wx_ref{type=Type}) ->
  ?CLASS(Type,wxClipboard),
  wxe_util:destroy(?DESTROY_OBJECT,Obj),
  ok.
