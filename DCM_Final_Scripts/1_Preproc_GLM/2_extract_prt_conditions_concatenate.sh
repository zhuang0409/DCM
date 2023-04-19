## SCRIPT COMPLETE FOR REAL CONDITIONS AND FOR REPRETITION SUPPRESSION CONTRASTS:

#### run the matlab functional (bv_LOG2PRT_ACROB, per each subject and run, creating a .prt file in the 'logfiles' folder -> real timings to be used for the contrasts of interest)

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29; do

	for run in 01 02 03 04 05 06 07 08 09 10; do

		if test -d /home/caterina/Documents/ACROB/logfiles/SUB${sub}_${run}_ACROB.prt
		then echo "SUB${sub}_${run} processed"
		else echo "SUB${sub}_${run} processing"
		matlab -nodisplay -nodesktop -r "run bv_LOG2PRT_ACROB(${sub}, ${run}); exit"
		fi
	done
done


### copy the .prt file in the folder 2_First_Level_Analysis and convert it in .txt

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29; do
	
	for run in 01 02 03 04 05 06 07 08 09 10; do

		mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/
		mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}
		mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi${run}
		mv /home/caterina/Documents/ACROB/logfiles/SUB${sub}_${run}_ACROB.prt /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi${run}/SUB${sub}_${run}_ACROB.txt

	done
done


### create the conditions.mat in the 2_First_Level_Analysis folder, for each run and each subject (1 file for each run, with the informations of all conditions)

for sub in 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29; do

echo "
T1 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi01/SUB${sub}_01_ACROB.txt')
T2 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi02/SUB${sub}_02_ACROB.txt')
T3 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi03/SUB${sub}_03_ACROB.txt')
T4 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi04/SUB${sub}_04_ACROB.txt')
T5 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi05/SUB${sub}_05_ACROB.txt')
T6 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi06/SUB${sub}_06_ACROB.txt')
T7 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi07/SUB${sub}_07_ACROB.txt')
T8 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi08/SUB${sub}_08_ACROB.txt')
T9 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi09/SUB${sub}_09_ACROB.txt')
T10 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi10/SUB${sub}_10_ACROB.txt')

a1 = [T1.Var1(5:12,1)]' %from table to cell
a1=str2double(a1) %from cell to double
a2 = [T2.Var1(5:12,1)]' %from table to cell
a2=str2double(a2) %from cell to double
a2=(a2+258)
a3= [T3.Var1(5:12,1)]'
a3=str2double(a3)
a3=(a3+(258*2))
a4= [T4.Var1(5:12,1)]'
a4=str2double(a4)
a4=(a4+(258*3))
a5= [T5.Var1(5:12,1)]'
a5=str2double(a5)
a5=(a5+(258*4))
a6= [T6.Var1(5:12,1)]'
a6=str2double(a6)
a6=(a6+(258*5))
a7= [T7.Var1(5:12,1)]'
a7=str2double(a7)
a7=(a7+(258*6))
a8= [T8.Var1(5:12,1)]'
a8=str2double(a8)
a8=(a8+(258*7))
a9= [T9.Var1(5:12,1)]'
a9=str2double(a9)
a9=(a9+(258*8))
a10= [T10.Var1(5:12,1)]'
a10=str2double(a10)
a10=(a10+(258*9))

b1 = [T1.Var1(17:24,1)]' %from table to cell
b1=str2double(b1) %from cell to double
b2 = [T2.Var1(17:24,1)]' %from table to cell
b2=str2double(b2) %from cell to double
b2=(b2+258)
b3= [T3.Var1(17:24,1)]'
b3=str2double(b3)
b3=(b3+(258*2))
b4= [T4.Var1(17:24,1)]'
b4=str2double(b4)
b4=(b4+(258*3))
b5= [T5.Var1(17:24,1)]'
b5=str2double(b5)
b5=(b5+(258*4))
b6= [T6.Var1(17:24,1)]'
b6=str2double(b6)
b6=(b6+(258*5))
b7= [T7.Var1(17:24,1)]'
b7=str2double(b7)
b7=(b7+(258*6))
b8= [T8.Var1(17:24,1)]'
b8=str2double(b8)
b8=(b8+(258*7))
b9= [T9.Var1(17:24,1)]'
b9=str2double(b9)
b9=(b9+(258*8))
b10= [T10.Var1(17:24,1)]'
b10=str2double(b10)
b10=(b10+(258*9))
        
c1 = [T1.Var1(29:36,1)]' %from table to cell
c1=str2double(c1) %from cell to double
c2 = [T2.Var1(29:36,1)]' %from table to cell
c2=str2double(c2) %from cell to double
c2=(c2+258)
c3= [T3.Var1(29:36,1)]'
c3=str2double(c3)
c3=(c3+(258*2))
c4= [T4.Var1(29:36,1)]'
c4=str2double(c4)
c4=(c4+(258*3))
c5= [T5.Var1(29:36,1)]'
c5=str2double(c5)
c5=(c5+(258*4))
c6= [T6.Var1(29:36,1)]'
c6=str2double(c6)
c6=(c6+(258*5))
c7= [T7.Var1(29:36,1)]'
c7=str2double(c7)
c7=(c7+(258*6))
c8= [T8.Var1(29:36,1)]'
c8=str2double(c8)
c8=(c8+(258*7))
c9= [T9.Var1(29:36,1)]'
c9=str2double(c9)
c9=(c9+(258*8))
c10= [T10.Var1(29:36,1)]'
c10=str2double(c10)
c10=(c10+(258*9))		
		
d1 = [T1.Var1(41:48,1)]' %from table to dell
d1=str2double(d1) %from dell to double
d2 = [T2.Var1(41:48,1)]' %from table to dell
d2=str2double(d2) %from dell to double
d2=(d2+258)
d3= [T3.Var1(41:48,1)]'
d3=str2double(d3)
d3=(d3+(258*2))
d4= [T4.Var1(41:48,1)]'
d4=str2double(d4)
d4=(d4+(258*3))
d5= [T5.Var1(41:48,1)]'
d5=str2double(d5)
d5=(d5+(258*4))
d6= [T6.Var1(41:48,1)]'
d6=str2double(d6)
d6=(d6+(258*5))
d7= [T7.Var1(41:48,1)]'
d7=str2double(d7)
d7=(d7+(258*6))
d8= [T8.Var1(41:48,1)]'
d8=str2double(d8)
d8=(d8+(258*7))
d9= [T9.Var1(41:48,1)]'
d9=str2double(d9)
d9=(d9+(258*8))
d10= [T10.Var1(41:48,1)]'
d10=str2double(d10)
d10=(d10+(258*9))
		
e1 = [T1.Var1(53:60,1)]' %from table to eell
e1=str2double(e1) %from eell to eouble
e2 = [T2.Var1(53:60,1)]' %from table to eell
e2=str2double(e2) %from eell to eouble
e2=(e2+258)
e3= [T3.Var1(53:60,1)]'
e3=str2double(e3)
e3=(e3+(258*2))
e4= [T4.Var1(53:60,1)]'
e4=str2double(e4)
e4=(e4+(258*3))
e5= [T5.Var1(53:60,1)]'
e5=str2double(e5)
e5=(e5+(258*4))
e6= [T6.Var1(53:60,1)]'
e6=str2double(e6)
e6=(e6+(258*5))
e7= [T7.Var1(53:60,1)]'
e7=str2double(e7)
e7=(e7+(258*6))
e8= [T8.Var1(53:60,1)]'
e8=str2double(e8)
e8=(e8+(258*7))
e9= [T9.Var1(53:60,1)]'
e9=str2double(e9)
e9=(e9+(258*8))
e10= [T10.Var1(53:60,1)]'
e10=str2double(e10)
e10=(e10+(258*9))		
        
f1 = [T1.Var1(65:72,1)]' %from tablf to ffll
f1=str2double(f1) %from ffll to foublf
f2 = [T2.Var1(65:72,1)]' %from tablf to ffll
f2=str2double(f2) %from ffll to foublf
f2=(f2+258)
f3= [T3.Var1(65:72,1)]'
f3=str2double(f3)
f3=(f3+(258*2))
f4= [T4.Var1(65:72,1)]'
f4=str2double(f4)
f4=(f4+(258*3))
f5= [T5.Var1(65:72,1)]'
f5=str2double(f5)
f5=(f5+(258*4))
f6= [T6.Var1(65:72,1)]'
f6=str2double(f6)
f6=(f6+(258*5))
f7= [T7.Var1(65:72,1)]'
f7=str2double(f7)
f7=(f7+(258*6))
f8= [T8.Var1(65:72,1)]'
f8=str2double(f8)
f8=(f8+(258*7))
f9= [T9.Var1(65:72,1)]'
f9=str2double(f9)
f9=(f9+(258*8))
f10= [T10.Var1(65:72,1)]'
f10=str2double(f10)
f10=(f10+(258*9))

g1 = [T1.Var1(77:84,1)]' 
g1=str2double(g1) 
g2 = [T2.Var1(77:84,1)]' 
g2=str2double(g2) 
g2=(g2+258)
g3= [T3.Var1(77:84,1)]'
g3=str2double(g3)
g3=(g3+(258*2))
g4= [T4.Var1(77:84,1)]'
g4=str2double(g4)
g4=(g4+(258*3))
g5= [T5.Var1(77:84,1)]'
g5=str2double(g5)
g5=(g5+(258*4))
g6= [T6.Var1(77:84,1)]'
g6=str2double(g6)
g6=(g6+(258*5))
g7= [T7.Var1(77:84,1)]'
g7=str2double(g7)
g7=(g7+(258*6))
g8= [T8.Var1(77:84,1)]'
g8=str2double(g8)
g8=(g8+(258*7))
g9= [T9.Var1(77:84,1)]'
g9=str2double(g9)
g9=(g9+(258*8))
g10= [T10.Var1(77:84,1)]'
g10=str2double(g10)
g10=(g10+(258*9))

h1 = [T1.Var1(89:96,1)]' %hrom tablh to hhll
h1=str2double(h1) %hrom hhll to houblh
h2 = [T2.Var1(89:96,1)]' %hrom tablh to hhll
h2=str2double(h2) %hrom hhll to houblh
h2=(h2+258)
h3= [T3.Var1(89:96,1)]'
h3=str2double(h3)
h3=(h3+(258*2))
h4= [T4.Var1(89:96,1)]'
h4=str2double(h4)
h4=(h4+(258*3))
h5= [T5.Var1(89:96,1)]'
h5=str2double(h5)
h5=(h5+(258*4))
h6= [T6.Var1(89:96,1)]'
h6=str2double(h6)
h6=(h6+(258*5))
h7= [T7.Var1(89:96,1)]'
h7=str2double(h7)
h7=(h7+(258*6))
h8= [T8.Var1(89:96,1)]'
h8=str2double(h8)
h8=(h8+(258*7))
h9= [T9.Var1(89:96,1)]'
h9=str2double(h9)
h9=(h9+(258*8))
h10= [T10.Var1(89:96,1)]'
h10=str2double(h10)
h10=(h10+(258*9))

name_a1=(T1.Var1(3,1))
name_b1=(T1.Var1(15,1))
name_c1=(T1.Var1(27,1))
name_d1=(T1.Var1(39,1))
name_e1=(T1.Var1(51,1))
name_f1=(T1.Var1(63,1))
name_g1=(T1.Var1(75,1))
name_h1=(T1.Var1(87,1))

		
		names{1}= ['ActAObjATaskA'];
			onsets{1} = [a1 a2 a3 a4 a5 a6 a7 a8 a9 a10];
			durations{1} = [2];
			
		names{2}= ['ActAObjBTaskA'];
			onsets{2} = [b1 b2 b3 b4 b5 b6 b7 b8 b9 b10];
			durations{2} = [2];
			
		names{3}= ['ActBObjATaskA'];
			onsets{3} = [c1 c2 c3 c4 c5 c6 c7 c8 c9 c10];
			durations{3} = [2];
			
		names{4}= ['ActBObjBTaskA'];
			onsets{4} = [d1 d2 d3 d4 d5 d6 d7 d8 d9 d10];
			durations{4} = [2];
			
		names{5}= ['ActAObjATaskB'];
			onsets{5} = [e1 e2 e3 e4 e5 e6 e7 e8 e9 e10];
			durations{5} = [2];
			
		names{6}= ['ActAObjBTaskB'];
			onsets{6} = [f1 f2 f3 f4 f5 f6 f7 f8 f9 f10];
			durations{6} = [2];
			
		names{7}= ['ActBObjATaskB'];
			onsets{7} = [g1 g2 g3 g4 g5 g6 g7 g8 g9 g10];
			durations{7} = [2];
			
		names{8}= ['ActBObjBTaskB'];
			onsets{8} = [h1 h2 h3 h4 h5 h6 h7 h8 h9 h10];
			durations{8} = [2];
			
			save('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/all_conditions.mat', 'names', 'onsets', 'durations')" >> all_conditions.txt


        cp all_conditions.txt create_all_conditions.m
	rm all_conditions.txt
	matlab -nodisplay -nodesktop -r "run create_all_conditions.m; exit"
	mv create_all_conditions.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/create_all_conditions_SUB${sub}.m
	
done

## subject 01: 130 volumes:

for sub in 01; do

echo "
T1 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi01/SUB${sub}_01_ACROB.txt')
T2 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi02/SUB${sub}_02_ACROB.txt')
T3 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi03/SUB${sub}_03_ACROB.txt')
T4 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi04/SUB${sub}_04_ACROB.txt')
T5 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi05/SUB${sub}_05_ACROB.txt')
T6 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi06/SUB${sub}_06_ACROB.txt')
T7 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi07/SUB${sub}_07_ACROB.txt')
T8 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi08/SUB${sub}_08_ACROB.txt')
T9 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi09/SUB${sub}_09_ACROB.txt')
T10 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi10/SUB${sub}_10_ACROB.txt')

a1 = [T1.Var1(5:12,1)]' %from table to cell
a1=str2double(a1) %from cell to double
a2 = [T2.Var1(5:12,1)]' %from table to cell
a2=str2double(a2) %from cell to double
a2=(a2+252)
a3= [T3.Var1(5:12,1)]'
a3=str2double(a3)
a3=(a3+(252*2))
a4= [T4.Var1(5:12,1)]'
a4=str2double(a4)
a4=(a4+(252*3))
a5= [T5.Var1(5:12,1)]'
a5=str2double(a5)
a5=(a5+(252*4))
a6= [T6.Var1(5:12,1)]'
a6=str2double(a6)
a6=(a6+(252*5))
a7= [T7.Var1(5:12,1)]'
a7=str2double(a7)
a7=(a7+(252*6))
a8= [T8.Var1(5:12,1)]'
a8=str2double(a8)
a8=(a8+(252*7))
a9= [T9.Var1(5:12,1)]'
a9=str2double(a9)
a9=(a9+(252*8))
a10= [T10.Var1(5:12,1)]'
a10=str2double(a10)
a10=(a10+(252*9))

b1 = [T1.Var1(17:24,1)]' %from table to cell
b1=str2double(b1) %from cell to double
b2 = [T2.Var1(17:24,1)]' %from table to cell
b2=str2double(b2) %from cell to double
b2=(b2+252)
b3= [T3.Var1(17:24,1)]'
b3=str2double(b3)
b3=(b3+(252*2))
b4= [T4.Var1(17:24,1)]'
b4=str2double(b4)
b4=(b4+(252*3))
b5= [T5.Var1(17:24,1)]'
b5=str2double(b5)
b5=(b5+(252*4))
b6= [T6.Var1(17:24,1)]'
b6=str2double(b6)
b6=(b6+(252*5))
b7= [T7.Var1(17:24,1)]'
b7=str2double(b7)
b7=(b7+(252*6))
b8= [T8.Var1(17:24,1)]'
b8=str2double(b8)
b8=(b8+(252*7))
b9= [T9.Var1(17:24,1)]'
b9=str2double(b9)
b9=(b9+(252*8))
b10= [T10.Var1(17:24,1)]'
b10=str2double(b10)
b10=(b10+(252*9))
        
c1 = [T1.Var1(29:36,1)]' %from table to cell
c1=str2double(c1) %from cell to double
c2 = [T2.Var1(29:36,1)]' %from table to cell
c2=str2double(c2) %from cell to double
c2=(c2+252)
c3= [T3.Var1(29:36,1)]'
c3=str2double(c3)
c3=(c3+(252*2))
c4= [T4.Var1(29:36,1)]'
c4=str2double(c4)
c4=(c4+(252*3))
c5= [T5.Var1(29:36,1)]'
c5=str2double(c5)
c5=(c5+(252*4))
c6= [T6.Var1(29:36,1)]'
c6=str2double(c6)
c6=(c6+(252*5))
c7= [T7.Var1(29:36,1)]'
c7=str2double(c7)
c7=(c7+(252*6))
c8= [T8.Var1(29:36,1)]'
c8=str2double(c8)
c8=(c8+(252*7))
c9= [T9.Var1(29:36,1)]'
c9=str2double(c9)
c9=(c9+(252*8))
c10= [T10.Var1(29:36,1)]'
c10=str2double(c10)
c10=(c10+(252*9))		
		
d1 = [T1.Var1(41:48,1)]' %from table to dell
d1=str2double(d1) %from dell to double
d2 = [T2.Var1(41:48,1)]' %from table to dell
d2=str2double(d2) %from dell to double
d2=(d2+252)
d3= [T3.Var1(41:48,1)]'
d3=str2double(d3)
d3=(d3+(252*2))
d4= [T4.Var1(41:48,1)]'
d4=str2double(d4)
d4=(d4+(252*3))
d5= [T5.Var1(41:48,1)]'
d5=str2double(d5)
d5=(d5+(252*4))
d6= [T6.Var1(41:48,1)]'
d6=str2double(d6)
d6=(d6+(252*5))
d7= [T7.Var1(41:48,1)]'
d7=str2double(d7)
d7=(d7+(252*6))
d8= [T8.Var1(41:48,1)]'
d8=str2double(d8)
d8=(d8+(252*7))
d9= [T9.Var1(41:48,1)]'
d9=str2double(d9)
d9=(d9+(252*8))
d10= [T10.Var1(41:48,1)]'
d10=str2double(d10)
d10=(d10+(252*9))
		
e1 = [T1.Var1(53:60,1)]' %from table to eell
e1=str2double(e1) %from eell to eouble
e2 = [T2.Var1(53:60,1)]' %from table to eell
e2=str2double(e2) %from eell to eouble
e2=(e2+252)
e3= [T3.Var1(53:60,1)]'
e3=str2double(e3)
e3=(e3+(252*2))
e4= [T4.Var1(53:60,1)]'
e4=str2double(e4)
e4=(e4+(252*3))
e5= [T5.Var1(53:60,1)]'
e5=str2double(e5)
e5=(e5+(252*4))
e6= [T6.Var1(53:60,1)]'
e6=str2double(e6)
e6=(e6+(252*5))
e7= [T7.Var1(53:60,1)]'
e7=str2double(e7)
e7=(e7+(252*6))
e8= [T8.Var1(53:60,1)]'
e8=str2double(e8)
e8=(e8+(252*7))
e9= [T9.Var1(53:60,1)]'
e9=str2double(e9)
e9=(e9+(252*8))
e10= [T10.Var1(53:60,1)]'
e10=str2double(e10)
e10=(e10+(252*9))		
        
f1 = [T1.Var1(65:72,1)]' %from tablf to ffll
f1=str2double(f1) %from ffll to foublf
f2 = [T2.Var1(65:72,1)]' %from tablf to ffll
f2=str2double(f2) %from ffll to foublf
f2=(f2+252)
f3= [T3.Var1(65:72,1)]'
f3=str2double(f3)
f3=(f3+(252*2))
f4= [T4.Var1(65:72,1)]'
f4=str2double(f4)
f4=(f4+(252*3))
f5= [T5.Var1(65:72,1)]'
f5=str2double(f5)
f5=(f5+(252*4))
f6= [T6.Var1(65:72,1)]'
f6=str2double(f6)
f6=(f6+(252*5))
f7= [T7.Var1(65:72,1)]'
f7=str2double(f7)
f7=(f7+(252*6))
f8= [T8.Var1(65:72,1)]'
f8=str2double(f8)
f8=(f8+(252*7))
f9= [T9.Var1(65:72,1)]'
f9=str2double(f9)
f9=(f9+(252*8))
f10= [T10.Var1(65:72,1)]'
f10=str2double(f10)
f10=(f10+(252*9))

g1 = [T1.Var1(77:84,1)]' 
g1=str2double(g1) 
g2 = [T2.Var1(77:84,1)]' 
g2=str2double(g2) 
g2=(g2+252)
g3= [T3.Var1(77:84,1)]'
g3=str2double(g3)
g3=(g3+(252*2))
g4= [T4.Var1(77:84,1)]'
g4=str2double(g4)
g4=(g4+(252*3))
g5= [T5.Var1(77:84,1)]'
g5=str2double(g5)
g5=(g5+(252*4))
g6= [T6.Var1(77:84,1)]'
g6=str2double(g6)
g6=(g6+(252*5))
g7= [T7.Var1(77:84,1)]'
g7=str2double(g7)
g7=(g7+(252*6))
g8= [T8.Var1(77:84,1)]'
g8=str2double(g8)
g8=(g8+(252*7))
g9= [T9.Var1(77:84,1)]'
g9=str2double(g9)
g9=(g9+(252*8))
g10= [T10.Var1(77:84,1)]'
g10=str2double(g10)
g10=(g10+(252*9))

h1 = [T1.Var1(89:96,1)]' %hrom tablh to hhll
h1=str2double(h1) %hrom hhll to houblh
h2 = [T2.Var1(89:96,1)]' %hrom tablh to hhll
h2=str2double(h2) %hrom hhll to houblh
h2=(h2+252)
h3= [T3.Var1(89:96,1)]'
h3=str2double(h3)
h3=(h3+(252*2))
h4= [T4.Var1(89:96,1)]'
h4=str2double(h4)
h4=(h4+(252*3))
h5= [T5.Var1(89:96,1)]'
h5=str2double(h5)
h5=(h5+(252*4))
h6= [T6.Var1(89:96,1)]'
h6=str2double(h6)
h6=(h6+(252*5))
h7= [T7.Var1(89:96,1)]'
h7=str2double(h7)
h7=(h7+(252*6))
h8= [T8.Var1(89:96,1)]'
h8=str2double(h8)
h8=(h8+(252*7))
h9= [T9.Var1(89:96,1)]'
h9=str2double(h9)
h9=(h9+(252*8))
h10= [T10.Var1(89:96,1)]'
h10=str2double(h10)
h10=(h10+(252*9))

name_a1=(T1.Var1(3,1))
name_b1=(T1.Var1(15,1))
name_c1=(T1.Var1(27,1))
name_d1=(T1.Var1(39,1))
name_e1=(T1.Var1(51,1))
name_f1=(T1.Var1(63,1))
name_g1=(T1.Var1(75,1))
name_h1=(T1.Var1(87,1))

		
		names{1}= ['ActAObjATaskA'];
			onsets{1} = [a1 a2 a3 a4 a5 a6 a7 a8 a9 a10];
			durations{1} = [2];
			
		names{2}= ['ActAObjBTaskA'];
			onsets{2} = [b1 b2 b3 b4 b5 b6 b7 b8 b9 b10];
			durations{2} = [2];
			
		names{3}= ['ActBObjATaskA'];
			onsets{3} = [c1 c2 c3 c4 c5 c6 c7 c8 c9 c10];
			durations{3} = [2];
			
		names{4}= ['ActBObjBTaskA'];
			onsets{4} = [d1 d2 d3 d4 d5 d6 d7 d8 d9 d10];
			durations{4} = [2];
			
		names{5}= ['ActAObjATaskB'];
			onsets{5} = [e1 e2 e3 e4 e5 e6 e7 e8 e9 e10];
			durations{5} = [2];
			
		names{6}= ['ActAObjBTaskB'];
			onsets{6} = [f1 f2 f3 f4 f5 f6 f7 f8 f9 f10];
			durations{6} = [2];
			
		names{7}= ['ActBObjATaskB'];
			onsets{7} = [g1 g2 g3 g4 g5 g6 g7 g8 g9 g10];
			durations{7} = [2];
			
		names{8}= ['ActBObjBTaskB'];
			onsets{8} = [h1 h2 h3 h4 h5 h6 h7 h8 h9 h10];
			durations{8} = [2];
			
			save('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/all_conditions.mat', 'names', 'onsets', 'durations')" >> all_conditions.txt


        cp all_conditions.txt create_all_conditions.m
	rm all_conditions.txt
	matlab -nodisplay -nodesktop -r "run create_all_conditions.m; exit"
	mv create_all_conditions.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/create_all_conditions_SUB${sub}.m
	
done


for sub in 15; do

echo "
T1 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi01/SUB${sub}_01_ACROB.txt')
T2 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi02/SUB${sub}_02_ACROB.txt')
T3 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi03/SUB${sub}_03_ACROB.txt')
T4 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi04/SUB${sub}_04_ACROB.txt')
T5 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi05/SUB${sub}_05_ACROB.txt')
T6 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi06/SUB${sub}_06_ACROB.txt')
T7 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi07/SUB${sub}_07_ACROB.txt')
T9 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi09/SUB${sub}_09_ACROB.txt')
T10 = readtable('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/epi10/SUB${sub}_10_ACROB.txt')

a1 = [T1.Var1(5:12,1)]' %from table to cell
a1=str2double(a1) %from cell to double
a2 = [T2.Var1(5:12,1)]' %from table to cell
a2=str2double(a2) %from cell to double
a2=(a2+258)
a3= [T3.Var1(5:12,1)]'
a3=str2double(a3)
a3=(a3+(258*2))
a4= [T4.Var1(5:12,1)]'
a4=str2double(a4)
a4=(a4+(258*3))
a5= [T5.Var1(5:12,1)]'
a5=str2double(a5)
a5=(a5+(258*4))
a6= [T6.Var1(5:12,1)]'
a6=str2double(a6)
a6=(a6+(258*5))
a7= [T7.Var1(5:12,1)]'
a7=str2double(a7)
a7=(a7+(258*6))
a9= [T9.Var1(5:12,1)]'
a9=str2double(a9)
a9=(a9+(258*7))
a10= [T10.Var1(5:12,1)]'
a10=str2double(a10)
a10=(a10+(258*8))

b1 = [T1.Var1(17:24,1)]' %from table to cell
b1=str2double(b1) %from cell to double
b2 = [T2.Var1(17:24,1)]' %from table to cell
b2=str2double(b2) %from cell to double
b2=(b2+258)
b3= [T3.Var1(17:24,1)]'
b3=str2double(b3)
b3=(b3+(258*2))
b4= [T4.Var1(17:24,1)]'
b4=str2double(b4)
b4=(b4+(258*3))
b5= [T5.Var1(17:24,1)]'
b5=str2double(b5)
b5=(b5+(258*4))
b6= [T6.Var1(17:24,1)]'
b6=str2double(b6)
b6=(b6+(258*5))
b7= [T7.Var1(17:24,1)]'
b7=str2double(b7)
b7=(b7+(258*6))
b9= [T9.Var1(17:24,1)]'
b9=str2double(b9)
b9=(b9+(258*7))
b10= [T10.Var1(17:24,1)]'
b10=str2double(b10)
b10=(b10+(258*8))
        
c1 = [T1.Var1(29:36,1)]' %from table to cell
c1=str2double(c1) %from cell to double
c2 = [T2.Var1(29:36,1)]' %from table to cell
c2=str2double(c2) %from cell to double
c2=(c2+258)
c3= [T3.Var1(29:36,1)]'
c3=str2double(c3)
c3=(c3+(258*2))
c4= [T4.Var1(29:36,1)]'
c4=str2double(c4)
c4=(c4+(258*3))
c5= [T5.Var1(29:36,1)]'
c5=str2double(c5)
c5=(c5+(258*4))
c6= [T6.Var1(29:36,1)]'
c6=str2double(c6)
c6=(c6+(258*5))
c7= [T7.Var1(29:36,1)]'
c7=str2double(c7)
c7=(c7+(258*6))
c9= [T9.Var1(29:36,1)]'
c9=str2double(c9)
c9=(c9+(258*7))
c10= [T10.Var1(29:36,1)]'
c10=str2double(c10)
c10=(c10+(258*8))		
		
d1 = [T1.Var1(41:48,1)]' %from table to dell
d1=str2double(d1) %from dell to double
d2 = [T2.Var1(41:48,1)]' %from table to dell
d2=str2double(d2) %from dell to double
d2=(d2+258)
d3= [T3.Var1(41:48,1)]'
d3=str2double(d3)
d3=(d3+(258*2))
d4= [T4.Var1(41:48,1)]'
d4=str2double(d4)
d4=(d4+(258*3))
d5= [T5.Var1(41:48,1)]'
d5=str2double(d5)
d5=(d5+(258*4))
d6= [T6.Var1(41:48,1)]'
d6=str2double(d6)
d6=(d6+(258*5))
d7= [T7.Var1(41:48,1)]'
d7=str2double(d7)
d7=(d7+(258*6))
d9= [T9.Var1(41:48,1)]'
d9=str2double(d9)
d9=(d9+(258*7))
d10= [T10.Var1(41:48,1)]'
d10=str2double(d10)
d10=(d10+(258*8))
		
e1 = [T1.Var1(53:60,1)]' %from table to eell
e1=str2double(e1) %from eell to eouble
e2 = [T2.Var1(53:60,1)]' %from table to eell
e2=str2double(e2) %from eell to eouble
e2=(e2+258)
e3= [T3.Var1(53:60,1)]'
e3=str2double(e3)
e3=(e3+(258*2))
e4= [T4.Var1(53:60,1)]'
e4=str2double(e4)
e4=(e4+(258*3))
e5= [T5.Var1(53:60,1)]'
e5=str2double(e5)
e5=(e5+(258*4))
e6= [T6.Var1(53:60,1)]'
e6=str2double(e6)
e6=(e6+(258*5))
e7= [T7.Var1(53:60,1)]'
e7=str2double(e7)
e7=(e7+(258*6))
e9= [T9.Var1(53:60,1)]'
e9=str2double(e9)
e9=(e9+(258*7))
e10= [T10.Var1(53:60,1)]'
e10=str2double(e10)
e10=(e10+(258*8))		
        
f1 = [T1.Var1(65:72,1)]' %from tablf to ffll
f1=str2double(f1) %from ffll to foublf
f2 = [T2.Var1(65:72,1)]' %from tablf to ffll
f2=str2double(f2) %from ffll to foublf
f2=(f2+258)
f3= [T3.Var1(65:72,1)]'
f3=str2double(f3)
f3=(f3+(258*2))
f4= [T4.Var1(65:72,1)]'
f4=str2double(f4)
f4=(f4+(258*3))
f5= [T5.Var1(65:72,1)]'
f5=str2double(f5)
f5=(f5+(258*4))
f6= [T6.Var1(65:72,1)]'
f6=str2double(f6)
f6=(f6+(258*5))
f7= [T7.Var1(65:72,1)]'
f7=str2double(f7)
f7=(f7+(258*6))
f9= [T9.Var1(65:72,1)]'
f9=str2double(f9)
f9=(f9+(258*7))
f10= [T10.Var1(65:72,1)]'
f10=str2double(f10)
f10=(f10+(258*8))

g1 = [T1.Var1(77:84,1)]' 
g1=str2double(g1) 
g2 = [T2.Var1(77:84,1)]' 
g2=str2double(g2) 
g2=(g2+258)
g3= [T3.Var1(77:84,1)]'
g3=str2double(g3)
g3=(g3+(258*2))
g4= [T4.Var1(77:84,1)]'
g4=str2double(g4)
g4=(g4+(258*3))
g5= [T5.Var1(77:84,1)]'
g5=str2double(g5)
g5=(g5+(258*4))
g6= [T6.Var1(77:84,1)]'
g6=str2double(g6)
g6=(g6+(258*5))
g7= [T7.Var1(77:84,1)]'
g7=str2double(g7)
g7=(g7+(258*6))
g9= [T9.Var1(77:84,1)]'
g9=str2double(g9)
g9=(g9+(258*7))
g10= [T10.Var1(77:84,1)]'
g10=str2double(g10)
g10=(g10+(258*8))

h1 = [T1.Var1(89:96,1)]' %hrom tablh to hhll
h1=str2double(h1) %hrom hhll to houblh
h2 = [T2.Var1(89:96,1)]' %hrom tablh to hhll
h2=str2double(h2) %hrom hhll to houblh
h2=(h2+258)
h3= [T3.Var1(89:96,1)]'
h3=str2double(h3)
h3=(h3+(258*2))
h4= [T4.Var1(89:96,1)]'
h4=str2double(h4)
h4=(h4+(258*3))
h5= [T5.Var1(89:96,1)]'
h5=str2double(h5)
h5=(h5+(258*4))
h6= [T6.Var1(89:96,1)]'
h6=str2double(h6)
h6=(h6+(258*5))
h7= [T7.Var1(89:96,1)]'
h7=str2double(h7)
h7=(h7+(258*6))
h9= [T9.Var1(89:96,1)]'
h9=str2double(h9)
h9=(h9+(258*7))
h10= [T10.Var1(89:96,1)]'
h10=str2double(h10)
h10=(h10+(258*8))

name_a1=(T1.Var1(3,1))
name_b1=(T1.Var1(15,1))
name_c1=(T1.Var1(27,1))
name_d1=(T1.Var1(39,1))
name_e1=(T1.Var1(51,1))
name_f1=(T1.Var1(63,1))
name_g1=(T1.Var1(75,1))
name_h1=(T1.Var1(87,1))

		
		names{1}= ['ActAObjATaskA'];
			onsets{1} = [a1 a2 a3 a4 a5 a6 a7 a9 a10];
			durations{1} = [2];
			
		names{2}= ['ActAObjBTaskA'];
			onsets{2} = [b1 b2 b3 b4 b5 b6 b7 b9 b10];
			durations{2} = [2];
			
		names{3}= ['ActBObjATaskA'];
			onsets{3} = [c1 c2 c3 c4 c5 c6 c7 c9 c10];
			durations{3} = [2];
			
		names{4}= ['ActBObjBTaskA'];
			onsets{4} = [d1 d2 d3 d4 d5 d6 d7 d9 d10];
			durations{4} = [2];
			
		names{5}= ['ActAObjATaskB'];
			onsets{5} = [e1 e2 e3 e4 e5 e6 e7 e9 e10];
			durations{5} = [2];
			
		names{6}= ['ActAObjBTaskB'];
			onsets{6} = [f1 f2 f3 f4 f5 f6 f7 f9 f10];
			durations{6} = [2];
			
		names{7}= ['ActBObjATaskB'];
			onsets{7} = [g1 g2 g3 g4 g5 g6 g7 g9 g10];
			durations{7} = [2];
			
		names{8}= ['ActBObjBTaskB'];
			onsets{8} = [h1 h2 h3 h4 h5 h6 h7 h9 h10];
			durations{8} = [2];
			
			save('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/all_conditions.mat', 'names', 'onsets', 'durations')" >> all_conditions.txt


        cp all_conditions.txt create_all_conditions.m
	rm all_conditions.txt
	matlab -nodisplay -nodesktop -r "run create_all_conditions.m; exit"
	mv create_all_conditions.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/create_all_conditions_SUB${sub}.m
	
done

