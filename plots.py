import pandas as pd
import matplotlib.pyplot as plt

xaxis = "N"
yaxis = "Time elapsed (gcc)"
yaxis2 = "FLOPS/IPS (gcc)"

df = pd.read_csv("Data_plots_FLOPS-IPS_vs_N.csv")
df['block'] = df.groupby('m').cumcount()

def lab0vslab1():
    df_lab1 = df[df['block'] == 2]
    plt.plot(df_lab1[xaxis], df_lab1[yaxis2], color='green', label="Lab1")

    df_lab0 = df[df['block'] == 3]
    plt.plot(df_lab0[xaxis], df_lab0[yaxis2], color='orange', label="Tiny_md")

    plt.title("FLOPS/IPS")
    plt.legend()
    plt.xlabel("N (numero de particulas)")
    plt.ylabel("FLOPS/IPS")
    plt.show()

def lab2():

    df_cache = df[df['block'] == 0]
    #plt.plot(df_cache[xaxis], df_cache[yaxis], color='red', label="rxyz y fxyz mixed")

    df_split = df[df['block'] == 1]
    plt.plot(df_split[xaxis], df_split[yaxis], color='blue', label="Pre-calculo forces")

    df_lab1 = df[df['block'] == 2]
    plt.plot(df_lab1[xaxis], df_lab1[yaxis], color='green', label="Lab1")

    df_lab0 = df[df['block'] == 3]
    #plt.plot(df_lab0[xaxis], df_lab0[yaxis], color='orange', label="Tiny_md")

    plt.title("Tiempo de ejecucion")
    plt.legend()
    plt.xlabel("N (numero de particulas)")
    plt.ylabel("Tiempo de ejecucion")
    plt.show()


    #plt.plot(df_cache[xaxis], df_cache[yaxis2], color='red', label="rxyz y fxyz mixed")

    plt.plot(df_split[xaxis], df_split[yaxis2], color='blue', label="Pre-calculo forces")

    plt.plot(df_lab1[xaxis], df_lab1[yaxis2], color='green', label="Lab1")

    #plt.plot(df_lab0[xaxis], df_lab0[yaxis2], color='orange', label="Tiny_md")

    plt.title("FLOPS/IPS")
    plt.legend()
    plt.xlabel("N (numero de particulas)")
    plt.ylabel("FLOPS/IPS")
    plt.show()

lab2()