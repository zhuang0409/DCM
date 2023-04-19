## Put togheter all the movement regressors for each run, in a single .txt file

for sub in 24; do

cat /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi01/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi02/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi03/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi04/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi05/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi06/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi07/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi08/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi09/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi10/rp_epi_acrob_TR2_00005.txt > /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/allMovement_Regressors.txt


done


for sub in 15; do

cat /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi01/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi02/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi03/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi04/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi05/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi06/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi07/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi09/rp_epi_acrob_TR2_00005.txt /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/epi10/rp_epi_acrob_TR2_00005.txt > /home/caterina/Documents/ACROB/1_Preproc_Multi-sessions/SUB${sub}/allMovement_Regressors.txt

done
