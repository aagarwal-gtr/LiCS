Sample database has been declared in the beginning of the source file itself.
The following sample queries were run on that database.

Top Level Predicates:

print_employee_age/2
    Arguments:
    K1: lower bound of age
    K2: upper bound of age
    Output:
    Names of those employees whose age lies between K1 and K2 inclusive.
    Keep pressing ; until query returns false for all such names.
    Sample Output:
    print_employee_age(10, 20).
    EmpName: bbbb EmpID: 2
    true ;
    EmpName: cccc EmpID: 3
    true ;
    EmpName: dddd EmpID: 4
    true ;
    false.

print_employee_pay/2
    Arguments:
    P1: lower bound of salary
    P2: upper bound of salary
    Output:
    Names of those employees whose salary lies between P1 and P2 inclusive.
    Keep pressing ; until query returns false for all such names.
    Sample Output:
    print_employee_pay(25000, 55000).
    EmpName: cccc EmpID: 3
    true ;
    EmpName: dddd EmpID: 4
    true ;
    EmpName: eeee EmpID: 5
    true ;
    false.

print_employee_age_pay/4
    Arguments:
    K1: lower bound of age
    K2: upper bound of age
    P1: lower bound of salary
    P2: upper bound of salary
    Output:
    Names of those employees whose age lies between K1 and K2 inclusive and salary lies between P1 and P2 inclusive.
    Keep pressing ; until query returns false for all such names.
    Sample Output:
    print_employee_age_pay(10, 20, 25000, 55000).
    EmpName: cccc EmpID: 3
    true ;
    EmpName: dddd EmpID: 4
    true ;
    false.

print_employee_minexp_maxpay/2
    Arguments:
    Minexp: Minimum required experience
    Maxpay: Maximum possible salary
    Output:
    Names of those employees whose experience is atleast Minexp and salary is atmost Maxpay.
    Keep pressing ; until query returns false for all such names.
    Sample Output:
    print_employee_minexp_maxpay(20, 65000).
    EmpName: dddd EmpID: 4
    true ;
    EmpName: eeee EmpID: 5
    true ;
    EmpName: ffff EmpID: 6
    true ;
    false.

assign_projects/0
    No Arguments
    Output:
    Prints suitable mappings of employees to projects
    Sample Output:
    EmpName: aaaa EmpID: 1 is assigned ProjId: 1
    true ;
    EmpName: bbbb EmpID: 2 is assigned ProjId: 1
    true ;
    EmpName: cccc EmpID: 3 is assigned ProjId: 1
    true ;
    EmpName: dddd EmpID: 4 is assigned ProjId: 1
    true ;
    EmpName: eeee EmpID: 5 is assigned ProjId: 1
    true ;
    EmpName: ffff EmpID: 6 is assigned ProjId: 4
    true ;
    EmpName: gggg EmpID: 7 is assigned ProjId: 3
    true ;
    EmpName: hhhh EmpID: 8 is assigned ProjId: 3
    true ;
    EmpName: iiii EmpID: 9 is assigned ProjId: 5
    true ;
    EmpName: jjjj EmpID: 10 is assigned ProjId: 5
    true.