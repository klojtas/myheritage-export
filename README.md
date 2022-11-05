# Overview
Export of the myheritage gedcom and load the images to the local folder.

# Load gedcom file from the myheritage

[Instruction how to get the file](https://faq.myheritage.com/en/article/can-i-export-a-gedcom-file-of-my-family-tree-from-my-family-site)

## Load the images

Process describes how to load images from myheritage

```bash
GETCOM_FILE=sample-file.ged # file previously loaded from myheritage 
SERVER_NAME=sites-cf.mhcache.com

grep $SERVER_NAME $GETCOM_FILE | cut -b 8- > urls.txt
for i in `cat urls.txt`; do wget `echo $i | tr -d '\r'`; done
```

## Replace the location

Inside the code come file you can replace location from the internet one to the local one.

```bash
NEW_LOCATION=$PWD 
sed -i -E "s#.*$SERVER_NAME.*/#2 FILE $NEW_LOCATION#" $GETCOM_FILE
```

## Load gedcom
Now you can load getcom to the program.

### Known issues

#### wget won't work in WSL with VPN

#### winodws path

to get the windows path

```bash
### Known issues
NEW_LOCATION=C:\\\\XXX\\\\YYY\\\\
```


