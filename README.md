# Overview
Export of the myheritage gedcom and load the images to the local folder.

# Load gedcom file from the myheritage

[Instruction how to get the file](https://faq.myheritage.com/en/article/can-i-export-a-gedcom-file-of-my-family-tree-from-my-family-site)

# Load the images

Process describes how to load images from myheritage

```bash
GETCOM_FILE=sample-file.ged # file previously loaded from myheritage 
SERVER_NAME=sites-cf.mhcache.com

grep $SERVER_NAME $GETCOM_FILE | cut -b 8- > urls.txt
for i in `cat urls.txt`; do wget `echo $i | tr -d '\r'`; done
```
