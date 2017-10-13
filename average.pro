average(X,Y) :- average(X,0,0,Y).
average(Y) :- average(
		[exam(geometria,23),
		 exam(fondamenti_inf_1,29),
		 exam(calc_delle_prob,21),
		 exam(analisi_mat_1,25),
		 exam(fisica,26),
		 exam(calc_elettronici,26),
		 exam(analisi_mat_2,24),
		 exam(controlli_autom,29),
		 exam(teoria_dei_sitemi,24),
		 exam(reti_di_calcolatori,25),
		 exam(fondamenti_inf_2,24),
		 exam(sistemi_operativi,28),
		 exam(basi_di_dati,25),
		 exam(telecomunicazioni,20),
		 exam(ricerca_operativa,22),
		 exam(contr_gest_reti,28),
		 exam(complementi_fisica,19)],0,0,Y).

average([exam(_,X)|T],A1,A2,Avg) :- A1new is A1 + 1, 
									A2new is A2 + ((X-A2)/A1new),
									average(T,A1new,A2new,Avg).
							
average([],_,A,A).

dev(Y) :- dev(
		[exam(geometria,23),
		 exam(fondamenti_inf_1,29),
		 exam(calc_delle_prob,21),
		 exam(analisi_mat_1,25),
		 exam(fisica,26),
		 exam(calc_elettronici,26),
		 exam(analisi_mat_2,24),
		 exam(controlli_autom,29),
		 exam(teoria_dei_sitemi,24),
		 exam(reti_di_calcolatori,25),
		 exam(fondamenti_inf_2,24),
		 exam(sistemi_operativi,28),
		 exam(basi_di_dati,25),
		 exam(telecomunicazioni,20),
		 exam(ricerca_operativa,22),
		 exam(contr_gest_reti,28),
		 exam(complementi_fisica,19)],Y).
						 
dev([],0).
dev(X, V0) :- average(X,Y), variance(X,Y,Z), len(X,N),
				W is (Z/N), sqrt(W,V0).
		 
variance([],_,0).
variance([exam(_,H)|T], M, VO):- variance(T,M,Y),
						 VO is( Y + ((H-M)*(H-M))). 
						 
len([],0).
len([_|Xs],N) :- len(Xs,N1), N is N1 + 1.
						 
						 
						 