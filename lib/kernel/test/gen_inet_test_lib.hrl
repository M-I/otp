%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2020-2020. All Rights Reserved.
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% 
%% %CopyrightEnd%
%%

-ifndef(gen_inet_test_lib_hrl).
-define(gen_inet_test_lib_hrl, true).

-define(LIB,                    gen_inet_test_lib).

-define(SKIPT(R),               throw({skip, R})).
-define(SKIPE(R),               exit({skip, R})).

-define(TC_TRY(Case, TC),       ?TC_TRY(Case, fun() -> ok end, TC)).
-define(TC_TRY(Case, Cond, TC), ?LIB:tc_try(Case, Cond, TC)).

-define(F(FORMAT, ARGS),        ?LIB:f(FORMAT, ARGS)).
-define(P(F),                   ?LIB:print(F)).
-define(P(F,A),                 ?LIB:print(F, A)).

-define(SECS(I),                timer:seconds(I)).
-define(MINS(I),                timer:minutes(I)).

-define(SLEEP(T),               ct:sleep(T)).

-endif. % -ifdef(gen_inet_test_lib_hrl).