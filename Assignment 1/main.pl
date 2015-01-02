/* employee(name, unique identifier, age, monthly pay, months of experience) */
/* employee(EmpName, EmpId, EmpAge, EmpPay, EmpExp) */
employee(aaaa, 1, 5, 10000, 5).
employee(bbbb, 2, 10, 20000, 10).
employee(cccc, 3, 15, 30000, 15).
employee(dddd, 4, 20, 40000, 20).
employee(eeee, 5, 25, 50000, 25).
employee(ffff, 6, 30, 60000, 30).
employee(gggg, 7, 35, 70000, 35).
employee(hhhh, 8, 45, 80000, 40).
employee(iiii, 9, 50, 90000, 45).
employee(jjjj, 10, 55, 100000, 50).

/* project(project id, no of employees, minimum experience, maximum pay) */
/* project(ProjId, ProjNo, ProjExp, ProjPay) */
project(1, 3, 5, 50000).
project(2, 2, 1, 20000).
project(3, 1, 35, 80000).
project(4, 1, 25, 70000).
project(5, 3, 32, 110000).

:- dynamic(increa/2).
:- dynamic(increb/2).

increa(1, 0).
increa(2, 0).
increa(3, 0).
increa(4, 0).
increa(5, 0).
increa(6, 0).
increa(7, 0).
increa(8, 0).
increa(9, 0).
increa(10, 0).

find_employee_age(EmpAge, K1, K2):-
    K1=<EmpAge, K2>=EmpAge.

find_employee_pay(EmpPay, P1, P2):-
    P1=<EmpPay, P2>=EmpPay.

find_employee_age_pay(EmpAge, EmpPay, K1, K2, P1, P2):-
    K1=<EmpAge, K2>=EmpAge, P1=<EmpPay, P2>=EmpPay.

find_employee_minexp_maxpay(EmpPay, EmpExp, Minexp, Maxpay):-
    EmpPay=<Maxpay, EmpExp>=Minexp.

print_employee_age(K1, K2):-
    employee(EmpName, EmpId, EmpAge, _, _),
    find_employee_age(EmpAge, K1, K2),
    write('EmpName: '),write(EmpName),write(' EmpID: '),write(EmpId).

print_employee_pay(P1, P2):-
    employee(EmpName, EmpId, _, EmpPay, _),
    find_employee_pay(EmpPay, P1, P2),
    write('EmpName: '),write(EmpName),write(' EmpID: '),write(EmpId).

print_employee_age_pay(K1, K2, P1, P2):-
    employee(EmpName, EmpId, EmpAge, EmpPay, _),
    find_employee_age_pay(EmpAge, EmpPay, K1, K2, P1, P2),
    write('EmpName: '),write(EmpName),write(' EmpID: '),write(EmpId).

print_employee_minexp_maxpay(Minexp, Maxpay):-
    employee(EmpName, EmpId, _, EmpPay, EmpExp),
    find_employee_minexp_maxpay(EmpPay, EmpExp, Minexp, Maxpay),
    write('EmpName: '),write(EmpName),write(' EmpID: '),write(EmpId).

print_assignment(EmpName, EmpId, ProjId):-
    write('EmpName: '),write(EmpName),write(' EmpID: '),write(EmpId),
    write(' is assigned ProjId: '),write(ProjId), nl.

funca(EmpName, EmpId, ProjId):-
   increa(EmpId, 0)->(asserta(increa(EmpId, ProjId)), retract(increa(EmpId, 0)), print_assignment(EmpName, EmpId, ProjId));
   fail.

funcb(ProjId, ProjNoAss, ProjNo):-
   increb(ProjId, ProjNo)->fail;
   asserta(increb(ProjId, ProjNoAss+1)).

recurse_projects(EmpName, EmpId, EmpPay, EmpExp):-
    project(ProjId, ProjNo, ProjExp, ProjPay),
    ProjNo>0, EmpPay=<ProjPay, EmpExp>=ProjExp, funcb(ProjId, 0, ProjNo), funca(EmpName, EmpId, ProjId).

assign_projects:-
    employee(EmpName, EmpId, _, EmpPay, EmpExp),
    recurse_projects(EmpName, EmpId, EmpPay, EmpExp).