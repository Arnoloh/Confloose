import os

def rename(way):
    directory=os.listdir(way)
    for dir in directory:
        if dir in exclu:
            continue
        if not os.path.isfile(f"{way}/{dir}"):
            rename(f"{way}{dir}/")
        os.system(f"mv {way}{dir} {way}{dir[2:]}")
    return 1

exclu=[".confs",".DS_Store",".","..","renameall.py","inverse.py"]
path="/Users/arnoloh/Desktop/con/"
rename(path)
os.system("tree -a")
