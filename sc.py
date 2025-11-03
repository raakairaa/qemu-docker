import time
import string

file_name = "auto-alive.txt"

try:
    while True:
        for huruf in string.ascii_lowercase:  
            with open(file_name, "a") as file:
                file.write(huruf + "\n")
            print(f"menulis: {huruf}")
            time.sleep(60)  #delay
    print("\ndihentikan.")
