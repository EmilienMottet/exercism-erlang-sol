-module(largest_series_product).

-export([largest_product/2]).

largest_product(_Digits, 0) ->
    1;
largest_product(Digits, Span) when Span > 0 ->
    {L1, L2} = lists:split(Span, Digits),
    do_largest_product(L1, L2, Span, 0).

do_largest_product(List, [], _Span, Max) ->
    Sum = product(List),
    if Sum > Max ->
           Sum;
       true ->
           Max
    end;
do_largest_product(List = [_H | T1], [H | T2], Span, Max) ->
    Sum = product(List),
    if Sum > Max ->
           do_largest_product(T1 ++ [H], T2, Span, Sum);
       true ->
           do_largest_product(T1 ++ [H], T2, Span, Max)
    end.

product(List) ->
    lists:foldl(fun(X, Prod) -> list_to_integer([X]) * Prod end, 1, List).
