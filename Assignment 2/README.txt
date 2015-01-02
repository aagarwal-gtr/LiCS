/*
Logic in Computer Science CS F214
Assignment No. 2

Abhinav Agarwal
2013A7PS124P

Varun Vasudevan
2013A7PS103P

Section No. 2
*/

Brief: Write a Prolog program for codifying Article I : Sections 6 to 8 of the Constitution of the U.S.

The nine queries, covering all clauses from sections 6-8, formulated by us are below.
Please follow query formats as specified below in the explanations and examples..
Press ';' when runing queries with multiple possible outputs.
Spelling errors in the query predicates may lead to wrong output/program errors.

_______________________________________________________________________________________________________________________________________________________________

Q1)Can a senetor be arrested?


/*
Query-senrep_be_arrested(Action,Offense).



Action-responsible for the offense(attending_session,going_to_session,coming_from_session,speech_in_house,debate_in_house).
Offense-crime commited-(treason,felony,breach_of_peace and any other valid crime).
*/


      ?-senrep_be_arrested(Action,Offense).
      A senetor or representatives can be arrested for treason
      Offense = treason ;
      A senetor or representatives can be arrested for felony
      Offense = felony ;
      A senetor or representatives can be arrested for breach_of_peace
      Offense = breach_of_peace ;
      A senetor or representtives cannot be arrested for attending_session if the offense is not treason, felony or breach of peace
      Action = attending_session ;
      A senetor or representtives cannot be arrested for going_to_session if the offense is not treason, felony or breach of peace
      Action = going_to_session ;
      A senetor or representtives cannot be arrested for coming_from_session if the offense is not treason, felony or breach of peace
      Action = coming_from_session ;
      A senetor or representtives cannot be arrested for speech_in_house if the offense is not treason, felony or breach of peace
      Action = speech_in_house ;
      A senetor or representtives cannot be arrested for debate_in_house if the offense is not treason, felony or breach of peace
      Action = debate_in_house.

/*Variations of the above question*/


Can a senetor be arrested for debate in house?


/*Query-senrep_be_arrested(debate_in_house).*/

      ?- senrep_be_arrested(debate_in_house,X).
      A senetor or representatives can be arrested for treason
      X = treason ;
      A senetor or representatives can be arrested for felony
      X = felony ;
      A senetor or representatives can be arrested for breach_of_peace
      X = breach_of_peace ;
      A senetor or representtives cannot be arrested for debate_in_house if the offense is not treason, felony or breach of peace

_______________________________________________________________________________________________________________________________________________________________


Q2)What are the condition to serve in congress?

/*
Query-serve_in_congress(Working).


Working-place working(executive,judiciary or some other field).
*/

      ?- serve_in_congress(Working).
      A person serving in the office of executive in the United States of America cannot simultaneously serve in congress
      Working = executive ;
      A person serving in the office of judiciary in the United States of America cannot simultaneously serve in congress
      Working = judiciary.


/*Variation of the above question*/


Can a person working as a teacher represent in the congress?


/*Query-serve_in_congress(teacher).*/

      ?- serve_in_congress(teacher).
      Since the person is not serving in the executive or judiciary  he/she can serve in congress.
_________________________________________________________________________________________________________________________________________________________________

Q3)Can a senetor or representative give up his/her job to move to another govt. job?

/*
Query-swap_govt_job(Term,Pay).


Term-change in pay in current or previous term.
Pay-increase or decrease.
*/

      He/she cannot resign and move to another govt post which has its payscale increased during their tenure.
      Term = current,
      Pay = increase.


/*Variation of the above question*/


Can a senetor/represenative move to govt job in which pay has been revised in the previous term?


/*Query-swap_govt_job(previous,_).*/

      ?- swap_govt_job(previous,_).
      If the payscale was not amended in present term he/she can move to another govt job.
_________________________________________________________________________________________________________________________________________________________________

Q4)How does a Bill become a law?

/*
Query-law_passed(Bill,Pres,Majority).


Bill-is the bill passed by both the houses(passed or not_passed).
Sign-is the bill signed by the president(signed or not_signed).
Majority-absolute or not_absolute.
*/

      ?- law_passed(Bill,Pres,Majority).
      If a bill is passed by both the houses and the president signs in favour,a law is passed
      Bill = passed,
      Pres = signed ;
      If a bill is passed by both the houses and the president does not respond within 10 days,a law is passed
      Bill = passed,
      Pres = no_action ;
      if bill is passed by both the houses and the president vetoes it, after reconsideration if more than 2/3 is in favour of bill law passed
      Bill = passed,
      Pres = not_signed,
      Majority = absolute.



/*Variation of the above question*/


If the bill is passed and the president does not sign and there is no absolute majority in the houses,can a law be passed?


/*Query-law_passed(passed,not_signed,absolute).*/



       ?- law_passed(passed,not_signed,absolute).
       if bill is passed by both the houses and the president vetoes it,bill after reconsideration if more than 2/3 is in favour law passed

____________________________________________________________________________________________________________________________________________________________________________

Q5)Where can a bill originate?

/*
Query-bill_orig(Bill,House).


Bill-type of bill(revenue_bill etc).
House-representatives or congress.
*/

       ?- bill_orig(Bill,House).
       A revenue_bill can orginate only in the house of the representatives.
       Bill = revenue_bill,
       House = representatives ;

/*Variation of the above question*/

Can a food bill be passed in the house of congress?


/*Query-bill_orig(food_bill,congress).*/

       bill_orig(food_bill,congress).
       Since it is not a revenue bill it can originate in either of the houses.

/*Variation of the above question*/


Can a revenue bill originate in congress?


/*Query-bill_orig(revenue_bill,congress).*/

       ?- bill_orig(revenue_bill,congress).
       not allowed.revenue_bill can only originate in the house of representatives.
________________________________________________________________________________________________________________________

Q6)What duties does the congress has to perform?

/*
Query-duty_to_perform(Duty).


Duty-the duty to perform(collect_taxes,collect_duties,collect_imposts,pay_debts),provide_for_general_welfare_of_USA).
*/



        ?- duty_to_perform(Duty).
        The congress is responsible to collect_taxes
        Duty = collect_taxes ;
        The congress is responsible to collect_duties
        Duty = collect_duties ;
        The congress is responsible to collect_imposts
        Duty = collect_imposts ;
        The congress is responsible to pay_debts
        Duty = pay_debts ; 
        The congress is responsible to provide_for_general_welfare_of_USA
        Duty = provide_for_general_welfare_of_USA ;

/*Variation in the above Question*/


Does the congress allowed to pay debts pending in the name of the country?

/*Query-duty_to_perform(pay_debts).*/

        ?- duty_to_perform(pay_debts).
        The congress is responsible to pay_debts.
___________________________________________________________________________________________________________________________________________________

Q7)For what all reasons can the congress allowed to take debt measures?

/*
Query-debt_measures(Reason).


Reason-reason for the debt measures.
*/

        ?- debt_measures(Reason).
        The Congress has the power to go into debt for govt_programs
        Reason = govt_programs ;
        The Congress has the power to go into debt for govt_services
        Reason = govt_services ;
        The Congress has the power to go into debt for deficit_spending
        Reason = deficit_spending ;



/*Variation of the above question*/

Is the Congress allowed to take debt measures for own needs?


/*Query-debt_measures(own_needs).*/


        ?- debt_measures(own_needs).
        Not allowed to go into debt for own_needs.
_________________________________________________________________________________________________________________________________

Q8)With whom all can the congress regulate trade?

/*
Query-commerce_regulate(Party).


Party-with whom trade is being done.
*/

       ?- commerce_regulate(Party).
       To regulate commerce with country(_G3393)
       Party = country(_G3393) ;
       To regulate commerce with state(_G3393)
       Party = state(_G3393) ;
       To regulate commerce with indian_tribe
       Party = indian_tribe 

/*Variation in the above question*/

Can the congress reglate commerce between the govt and an individual?

/*Query-commerce_regulate(individual).*/


       ?- commerce_regulate(individual).
       Not allowed to regulate commerce.

_____________________________________________________________________________________________________________________________

Q9)What civil powers does the Congress have?

/*
Query-power_of(Power).


Power-which it could exercise.
*/


       ?- power_of(Power).
       The Congress has the power to setup the process of immigrants becoming citizens
       Power = naturalization ;
       The Congress has the power to make laws on the subject of bankruptcies
       Power = bankrupt ;
       The Congress has the power to control the minting of currencies
       Power = minting ; 
       The Congress has the power to punish those counterfeiting and making fake currencies
       Power = punish ;
       The Congress has the authority to setup postoffices and make the roads connecting them
       Power = po_road ;
       The Congress has the power to punish pircies
       Power = promote_progres ;
       The Congress has the power to setup tribunals which are lower in authority than the supreme court
       Power = setup_tribunals ;
       The Congress has the power to declare war
       Power = declare_war ;
       The Congress has the power to make laws on controlling land and water of the USA
       Power = land_water ;


/*Variation of the above queston*/


Does the congress have the power of intruding personel life?


/*Query-power_of(personel).*/


       ?- power_of(personel).
       The congress does not have the authority for personel.

_________________________________________________________________________________________________________________________________________________________________