#Load env
source /opt/intel/oneapi/setvars.sh

#Ejecute program
advixe-cl --collect roofline --project-dir ./my_roofline -- ./$1

#Program report 
advixe-cl --report roofline --project-dir ./my_roofline

#Open graphics mode
advixe-gui


