%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/rational-numbers/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(rational_numbers_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").


equal_float(A, B) ->
    round(A*100) / 100==round(B*100) / 100.


'1_add_two_positive_rational_numbers_test_'() ->
    {"Add two positive rational numbers",
     ?_assertEqual({7, 6},
		   rational_numbers:add({1, 2}, {2, 3}))}.

'2_add_a_positive_rational_number_and_a_negative_rational_number_test_'() ->
    {"Add a positive rational number and a "
     "negative rational number",
     ?_assertEqual({-1, 6},
		   rational_numbers:add({1, 2}, {-2, 3}))}.

'3_add_two_negative_rational_numbers_test_'() ->
    {"Add two negative rational numbers",
     ?_assertEqual({-7, 6},
		   rational_numbers:add({-1, 2}, {-2, 3}))}.

'4_add_a_rational_number_to_its_additive_inverse_test_'() ->
    {"Add a rational number to its additive "
     "inverse",
     ?_assertEqual({0, 1},
		   rational_numbers:add({1, 2}, {-1, 2}))}.

'5_subtract_two_positive_rational_numbers_test_'() ->
    {"Subtract two positive rational numbers",
     ?_assertEqual({-1, 6},
		   rational_numbers:sub({1, 2}, {2, 3}))}.

'6_subtract_a_positive_rational_number_and_a_negative_rational_number_test_'() ->
    {"Subtract a positive rational number "
     "and a negative rational number",
     ?_assertEqual({7, 6},
		   rational_numbers:sub({1, 2}, {-2, 3}))}.

'7_subtract_two_negative_rational_numbers_test_'() ->
    {"Subtract two negative rational numbers",
     ?_assertEqual({1, 6},
		   rational_numbers:sub({-1, 2}, {-2, 3}))}.

'8_subtract_a_rational_number_from_itself_test_'() ->
    {"Subtract a rational number from itself",
     ?_assertEqual({0, 1},
		   rational_numbers:sub({1, 2}, {1, 2}))}.

'9_multiply_two_positive_rational_numbers_test_'() ->
    {"Multiply two positive rational numbers",
     ?_assertEqual({1, 3},
		   rational_numbers:mul({1, 2}, {2, 3}))}.

'10_multiply_a_negative_rational_number_by_a_positive_rational_number_test_'() ->
    {"Multiply a negative rational number "
     "by a positive rational number",
     ?_assertEqual({-1, 3},
		   rational_numbers:mul({-1, 2}, {2, 3}))}.

'11_multiply_two_negative_rational_numbers_test_'() ->
    {"Multiply two negative rational numbers",
     ?_assertEqual({1, 3},
		   rational_numbers:mul({-1, 2}, {-2, 3}))}.

'12_multiply_a_rational_number_by_its_reciprocal_test_'() ->
    {"Multiply a rational number by its reciprocal",
     ?_assertEqual({1, 1},
		   rational_numbers:mul({1, 2}, {2, 1}))}.

'13_multiply_a_rational_number_by_1_test_'() ->
    {"Multiply a rational number by 1",
     ?_assertEqual({1, 2},
		   rational_numbers:mul({1, 2}, {1, 1}))}.

'14_multiply_a_rational_number_by_0_test_'() ->
    {"Multiply a rational number by 0",
     ?_assertEqual({0, 1},
		   rational_numbers:mul({1, 2}, {0, 1}))}.

'15_divide_two_positive_rational_numbers_test_'() ->
    {"Divide two positive rational numbers",
     ?_assertEqual({3, 4},
		   rational_numbers:divide({1, 2}, {2, 3}))}.

'16_divide_a_positive_rational_number_by_a_negative_rational_number_test_'() ->
    {"Divide a positive rational number by "
     "a negative rational number",
     ?_assertEqual({-3, 4},
		   rational_numbers:divide({1, 2}, {-2, 3}))}.

'17_divide_two_negative_rational_numbers_test_'() ->
    {"Divide two negative rational numbers",
     ?_assertEqual({3, 4},
		   rational_numbers:divide({-1, 2}, {-2, 3}))}.

'18_divide_a_rational_number_by_1_test_'() ->
    {"Divide a rational number by 1",
     ?_assertEqual({1, 2},
		   rational_numbers:divide({1, 2}, {1, 1}))}.

'19_absolute_value_of_a_positive_rational_number_test_'() ->
    {"Absolute value of a positive rational "
     "number",
     ?_assertEqual({1, 2},
		   rational_numbers:absolute({1, 2}))}.

'20_absolute_value_of_a_positive_rational_number_with_negative_numerator_and_denominator_test_'() ->
    {"Absolute value of a positive rational "
     "number with negative numerator and denominator",
     ?_assertEqual({1, 2},
		   rational_numbers:absolute({-1, -2}))}.

'21_absolute_value_of_a_negative_rational_number_test_'() ->
    {"Absolute value of a negative rational "
     "number",
     ?_assertEqual({1, 2},
		   rational_numbers:absolute({-1, 2}))}.

'22_absolute_value_of_a_negative_rational_number_with_negative_denominator_test_'() ->
    {"Absolute value of a negative rational "
     "number with negative denominator",
     ?_assertEqual({1, 2},
		   rational_numbers:absolute({1, -2}))}.

'23_absolute_value_of_zero_test_'() ->
    {"Absolute value of zero",
     ?_assertEqual({0, 1},
		   rational_numbers:absolute({0, 1}))}.

'24_raise_a_positive_rational_number_to_a_positive_integer_power_test_'() ->
    {"Raise a positive rational number to "
     "a positive integer power",
     ?_assertEqual({1, 8}, rational_numbers:exp({1, 2}, 3))}.

'25_raise_a_negative_rational_number_to_a_positive_integer_power_test_'() ->
    {"Raise a negative rational number to "
     "a positive integer power",
     ?_assertEqual({-1, 8},
		   rational_numbers:exp({-1, 2}, 3))}.

'26_raise_zero_to_an_integer_power_test_'() ->
    {"Raise zero to an integer power",
     ?_assertEqual({0, 1}, rational_numbers:exp({0, 1}, 5))}.

'27_raise_one_to_an_integer_power_test_'() ->
    {"Raise one to an integer power",
     ?_assertEqual({1, 1}, rational_numbers:exp({1, 1}, 4))}.

'28_raise_a_positive_rational_number_to_the_power_of_zero_test_'() ->
    {"Raise a positive rational number to "
     "the power of zero",
     ?_assertEqual({1, 1}, rational_numbers:exp({1, 2}, 0))}.

'29_raise_a_negative_rational_number_to_the_power_of_zero_test_'() ->
    {"Raise a negative rational number to "
     "the power of zero",
     ?_assertEqual({1, 1},
		   rational_numbers:exp({-1, 2}, 0))}.

'30_raise_a_real_number_to_a_positive_rational_number_test_'() ->
    {"Raise a real number to a positive rational "
     "number",
     ?_assert(equal_float(1.6e+1,
			  rational_numbers:exp(8, {4, 3})))}.

'31_raise_a_real_number_to_a_negative_rational_number_test_'() ->
    {"Raise a real number to a negative rational "
     "number",
     ?_assert(equal_float(3.33333333333333314830e-1,
			  rational_numbers:exp(9, {-1, 2})))}.

'32_raise_a_real_number_to_a_zero_rational_number_test_'() ->
    {"Raise a real number to a zero rational "
     "number",
     ?_assert(equal_float(1.0,
			  rational_numbers:exp(2, {0, 1})))}.

'33_reduce_a_positive_rational_number_to_lowest_terms_test_'() ->
    {"Reduce a positive rational number to "
     "lowest terms",
     ?_assertEqual({1, 2}, rational_numbers:reduce({2, 4}))}.

'34_reduce_a_negative_rational_number_to_lowest_terms_test_'() ->
    {"Reduce a negative rational number to "
     "lowest terms",
     ?_assertEqual({-2, 3},
		   rational_numbers:reduce({-4, 6}))}.

'35_reduce_a_rational_number_with_a_negative_denominator_to_lowest_terms_test_'() ->
    {"Reduce a rational number with a negative "
     "denominator to lowest terms",
     ?_assertEqual({-1, 3},
		   rational_numbers:reduce({3, -9}))}.

'36_reduce_zero_to_lowest_terms_test_'() ->
    {"Reduce zero to lowest terms",
     ?_assertEqual({0, 1}, rational_numbers:reduce({0, 6}))}.

'37_reduce_an_integer_to_lowest_terms_test_'() ->
    {"Reduce an integer to lowest terms",
     ?_assertEqual({-2, 1},
		   rational_numbers:reduce({-14, 7}))}.

'38_reduce_one_to_lowest_terms_test_'() ->
    {"Reduce one to lowest terms",
     ?_assertEqual({1, 1},
		   rational_numbers:reduce({13, 13}))}.
