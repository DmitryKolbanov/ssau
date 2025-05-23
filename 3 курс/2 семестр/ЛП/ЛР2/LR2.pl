% ���������, ����������� ������������ ������� ����������
arshavin1(X) :- not(X = arshavin).
arshavin2(X) :- not(X = sergeev).
sergeev1(X) :- not(X = arshavin).
sergeev2(X) :- X = kanunnikov.
kanunnikov1(X) :- not(X = kanunnikov).
kanunnikov2(X) :- X = arshavin.

% �������� ��� �����������, ��� ������ ����
who_broke_the_window(X) :-
    % ��������� ��� ��������� ���������� ������������
    (arshavin1(X), arshavin2(X)), (sergeev1(X); sergeev2(X)), (not(kanunnikov1(X)), not(kanunnikov2(X)));

    (arshavin1(X), arshavin2(X)), (not(sergeev1(X)), not(sergeev2(X))), (kanunnikov1(X); kanunnikov2(X));

    (arshavin1(X); arshavin2(X)), (sergeev1(X), sergeev2(X)), (not(kanunnikov1(X)), not(kanunnikov2(X)));

    (arshavin1(X); arshavin2(X)), (not(sergeev1(X)), not(sergeev2(X))), (kanunnikov1(X), kanunnikov2(X));

    (not(arshavin1(X)), not(arshavin2(X))), (sergeev1(X); sergeev2(X)), (kanunnikov1(X), kanunnikov2(X));

    (not(arshavin1(X)), not(arshavin2(X))), (sergeev1(X), sergeev2(X)), (kanunnikov1(X); kanunnikov2(X)).

solve(X) :-
    who_broke_the_window(arshavin), X = arshavin;
    who_broke_the_window(sergeev), X = sergeev;
    who_broke_the_window(kanunnikov), X = kanunnikov.
