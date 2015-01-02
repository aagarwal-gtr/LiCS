/*Article 1*/
/*Section 6*/

/*Clause 1*/
action(attending_session).
action(going_to_session).
action(coming_from_session).
action(speech_in_house).
action(debate_in_house).

offense(treason).
offense(felony).
offense(breach_of_peace).

/*senrep_be_arrested  2/  Action,Offense*/

senrep_be_arrested(_,Offense):-offense(Offense),
	                        write('A senetor or representatives can be arrested for '),
				write(Offense).
senrep_be_arrested(Action,_):-action(Action),
				     write('A senetor or representtives cannot be arrested for '),
				     write(Action),
				     write(' if the offense is not treason, felony or breach of peace').


/*serve_in_congress   1/   Working_simultaneosly*/


/*Clause 2*/

exe(planning_commision).
exe(high_commision).
exe(mayor).
jud(army).
jud(police).
jud(airforce).
jud(navy).

is_a_type(X):-exe(X),
	      write('Since'),
	      write(X),
	      write(' is a type of executive.\n').
is_a_type(X):-jud(X),
	      write('Since'),
	      write(X),
	      write(' is a type of judiciary.\n').





work_in(executive).
work_in(judiciary).
work_in(X):-jud(X).
work_in(X):-exe(X).

serve_in_congress(Working):-not(work_in(Working)),
	                    write('Since the person is not serving in the executive or judiciary '),
			    write(' he/she can serve in congress.\n').

serve_in_congress(Working):-work_in(Working),
	                    write('A person serving in the office of '),
			    write(Working),
			    write(' in the United States of America cannot simultaneously serve in congress.\n').




/*swap_govt_job 2/   Term(current/previous),Pay(increase/decrease) */
term(current).
cannot_swap(Term,Pay):-term(Term),pay_scale(Pay).
pay_scale(increase).

/*Clause 3*/
swap_govt_job(Term,_):-not(term(Term)),
	               write('If the payscale was not amended in present term he/she can move to another govt job.').
swap_govt_job(Term,Pay):-term(Term),not(pay_scale(Pay)),
	                 write('If the payscale has not increased in the current term he/she can move to another job.').


swap_govt_job(Term,Pay):-cannot_swap(Term,Pay),
	                 write('He/she cannot resign and move to another govt post which has its payscale increased during their tenure').


/*Article 1 section 7*/


/*Clause 1*/
bill_type(revenue_bill).
cong(representatives).


bill_orig(X,Y):-bill_type(X),
	      cong(Y),
	      write('A '),
	      write(X),
	      write(' can orginate only in the house of the representatives.').
bill_orig(X,Y):-bill_type(X),
	        not(cong(Y)),
		write('not allowed.'),
		write(X),
		write(' can only originate in the house of representatives').

bill_orig(X,Y):-not(bill_type(X)),
	        not(cong(Y)),
		write('Since it is not a revenue bill it can originate in either of the houses').

/*Clause 2,3*/


bill(passed).
pressign(signed).
not_pressign(not_signed).
pres_response(no_action).
majority(absolute).

/*take this as reference*/

not_passed(Bill,_,_):-not(bill(Bill)),
	              write('Bill cannot become a law if it is not passed initially by the two houses').

not_passed(Bill,_,X):-bill(Bill),

			 not(majority(X)),
			 write('If the Bill is passed by both the houses and NOT signed by president and after reconsideration if the majority in the houses is  not absolute(more than 2/3) law will not be passed').

not_passed(Bill,Pres,X):-bill(Bill),
	                 pressign(Pres),
			 not(majority(X)),
			 write('Law cannot be made since there is no absolute majority in the houses.').

law_passed(Bill,Pres,_):-bill(Bill),
			 pressign(Pres),
			 write('If a bill is passed by both the houses and the president signs in favour,a law is passed').

law_passed(Bill,Pres,_):-bill(Bill),
			 pres_response(Pres),
			 write('If a bill is passed by both the houses and the president does not respond within 10 days,a law is passed').




law_passed(Bill,Sign,X):-bill(Bill),
	              not_pressign(Sign),
		      majority(X),
			 write('if bill is passed by both the houses and the president vetoes it, after reconsideration if more than 2/3 is in favour of bill law passed').


law_passed(Bill,Pres,X):-not_passed(Bill,Pres,X).

/*Section 8*/

/*Clause 1*/

duties(collect_taxes).
duties(collect_duties).
duties(collect_imposts).
duties(pay_debts).
duties(provide_for_general_welfare_of_USA).


duty_to_perform(X):-duties(X),
	            write('The congress is responsible to '),
		    write(X).

duty_to_perform(X):-not(duties(X)),
	            write('Not allowed to '),
		    write(X).
/*Clause 2*/

debt(govt_programs).
debt(govt_services).
debt(deficit_spending).

debt_measures(X):-debt(X),
	          write('The Congress has the power to go into debt for '),
		  write(X).


debt_measures(X):-not(debt(X)),
	          write('Not allowed to go into debt for '),
		  write(X).


/*Clause 3*/
commerce(country(_)).
commerce(state(_)).
commerce(indian_tribe).


commerce_regulate(X):-commerce(X),
	              write('To regulate commerce with '),
		      write(X).
commerce_regulate(X):-not(commerce(X)),
	              write('Not allowed to regulate commerce').



/*Clause 4*/
power(naturalization).
power(bankrupt).
power(minting).
power(punish).
power(po_road).
power(promote_progress).
power(setup_tribunals).
power(piracies).
power(declare_war).
power(marque).
power(land_and_water).



power_of(naturalization):-
	     write('The Congress has the power to setup the process of immigrants becoming citizens').

power_of(bankrupt):-
	     write('The Congress has the power to make laws on the subject of bankruptcies').

power_of(minting):-
	     write('The Congress has the power to control the minting of currencies').


power_of(punish):-
	     write('The Congress has the power to punish those counterfeiting and making fake currencies').


power_of(po_road):-
	     write('The Congress has the authority to setup postoffices and make the roads connecting them').

power_of(promote_progres):-
	     write('The Congress has the power to punish pircies').

power_of(setup_tribunals):-
	     write('The Congress has the power to setup tribunals which are lower in authority than the supreme court').

power_of(declare_war):-
	     write('The Congress has the power to declare war').

power_of(land_water):-
	     write('The Congress has the power to make laws on controlling land and water of the USA').

power_of(X):-not(power(X)),
	     write('The congress does not have the authority for '),
	     write(X).