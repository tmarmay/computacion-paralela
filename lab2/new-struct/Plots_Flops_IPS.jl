# Descomentar para instalar las librerias #

#using Pkg             
#Pkg.add("DataFrames") 
#Pkg.add("CSV")        
#Pkg.add("Plots")      
                    
########################################################
using DataFrames
using CSV
using Plots;gr()

########################################################

      df_MO = DataFrame(CSV.File("Data_plots_mejor_optimizacion_FLOPS-IPS_vs_N.csv"))
df_original = DataFrame(CSV.File("Data_plots_original_FLOPS-IPS_vs_N.csv")) 
         df = DataFrame(CSV.File("Data_plots_FLOPS-IPS_vs_N.csv")) 

println("")
println("Versión original:")
println(df_original)
println("")
println("Con optimizacion en el compilador:")
println(df)
println("")
println("Con optimizacion en el compilador y en el código:")
println(df_MO)
println("")

########################################################
# Plot FlOPS/IPS código original y optimizaciones de compilador para gcc y clang

plot(df[:,"N"], [df_original[:,"FLOPS/IPS (original - gcc)"]  df[:,"FLOPS/IPS (gcc)"] df[:,"FLOPS/IPS (clang)"]], label=["gcc - original" "gcc - sin optimización de código" "clang - sin optimización de código"], markershape=:circle)
plot!(framestyle=:box, minorgrid=true)
plot!( legendanchor=:n, legendposition=(0.6, 0.5))

xlabel!("N")
ylabel!("Flops/IPS")
title!("")

savefig("Plot_original_gcc_clang_sin_OC_FLOPS-IPS_vs_N.png")  

########################################################
# Plot Time elapse para código original, optimizaciones de compilador gcc y optimización de compilador y código gcc

plot(df[:,"N"], [df_original[:,"Time elapsed (original - gcc)"]  df[:,"Time elapsed (gcc)"] df_MO[:,"Time elapsed (gcc)"]], label=["Time elapsed (gcc -original)" "Time elapsed (gcc - sin optimización de código)" "Time elapsed (gcc - con optimización de código)"], markershape=:circle) 
plot!(framestyle=:box, minorgrid=true)

xlabel!("N")
ylabel!("Time elapsed [s]")
title!("")

savefig("Plot_original_gcc-sin-OC_gcc-con-OC_time_elapsed_vs_N.png")
########################################################
# Plot FlOPS/IPS código original,  gcc sin optimización de código y gcc con optimización de código
 
plot(df[:,"N"], [df_original[:,"FLOPS/IPS (original - gcc)"] df[:,"FLOPS/IPS (gcc)"]  df_MO[:,"FLOPS/IPS (gcc)"]], 
label=["gcc - original" "gcc - sin optimización de código"  "gcc - con optimización de código"], markershape=:circle)
plot!(framestyle=:box, minorgrid=true)
plot!( legendanchor=:n, legendposition=(0.6, 0.9))

xlabel!("N")
ylabel!("Flops/IPS")
title!("")

savefig("Plot_original_gcc-sin-OC_gcc-con-OC_FLOPS-IPS_vs_N.png")  

########################################################
