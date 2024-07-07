from locale import LC_ALL, setlocale
from time import gmtime, strftime

def main():
    setlocale(LC_ALL, "")
    print(strftime("%A, %d %B %Y %H:%M:%S +0000", gmtime(1720387746)))

if __name__ == "__main__":
    main()
