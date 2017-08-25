le_lista(0, []).
le_lista(N, [H|T]) :-
    read_line_to_codes(user_input, N2),
    string_to_atom(N2, N1),
    atom_number(N1, N0),
    Z is N - 1,
    H = N0,
    le_lista(Z, T).


soma_listas([], []).
soma_listas([H|T], [H1|T1]) :- S is H + H1, write(S),nl, soma_listas(T, T1).

:- initialization main.

main:-

  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1,A),
  le_lista(A, L1),
  le_lista(A, L2),
  soma_listas(L1, L2).
