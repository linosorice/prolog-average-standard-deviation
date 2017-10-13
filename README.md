# Prolog Average
		
## SIGNATURE OF METODS

	* average(X): Returns to X the average of all the exams	in the KB.
	* average(X,Y): Returns to Y the average of the list of exams in X.
	
	* dev(Y): Returns to Y the standard deviation of all the exams in the KB.
	* dev(X,Y): Return to Y the standard deviation of the list of exams in X.

## Examples

	exam(geometria,23),
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
	exam(complementi_fisica,19)
	
###	Average
	
	?- average(Y).
	
		Y = 24.588235294117645.
	
###	Standard deviation
	
	?- adev(Y).
	
		Y = 2.8913425241045894.
