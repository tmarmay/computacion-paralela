import pandas as pd
import re

def parse_hdump(file_path: str = "hdump") -> pd.DataFrame:
    data = []
    
    current_entry = {}

    with open(file_path, "r") as f:
        for line in f:
            line = line.strip()

            if line.startswith("************************"):
                if current_entry:  
                    data.append(current_entry)  
                current_entry = {}  
            
            elif line.startswith("N-particulas:"):
                current_entry["N-particulas"] = int(line.split(":")[1].strip())

            elif line.startswith("Optimizacion:"):
                current_entry["Optimizacion"] = line.split(":")[1].strip()

            elif line.startswith("Flags:"):
                current_entry["Flags"] = line.split(":")[1].strip()

            elif "fp_ret_sse_avx_ops.all" in line:
                current_entry["fp_ret_sse_avx_ops.all"] = int(line.split()[0])

            elif "instructions" in line:
                current_entry["instructions"] = int(line.split()[0])

            elif "seconds time elapsed" in line:
                current_entry["time_elapsed"] = float(line.split()[0])

            elif "seconds user" in line:
                current_entry["user_time"] = float(line.split()[0])

            elif "seconds sys" in line:
                current_entry["sys_time"] = float(line.split()[0])

    if current_entry:
        data.append(current_entry)

    df = pd.DataFrame(data)
    return df

def hdump2csv(df: pd.DataFrame = parse_hdump()) -> str:
    df.to_csv("hdump.csv")

hdump2csv()
