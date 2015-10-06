# Readme

## Software include:
picard 1.139, tophat 2.1.0, cufflinks 2.2.1, bowtie2 2.2.6, bwa 0.7.12-r1044, samtools 0.1.19-96b5f2294a, sratoolkit 2.5.4-1.

##How to use
###bwa build index
```
$pwd
/home/forrest/Docker/test
$ls ref
-rw-rw-r-- 1 forrest forrest 116M Oct  6 16:21 tair10.fa
```
There is Arabiodpsis Genome Sequence (tair10.fa) in /home/forrest/Docker/test/ref/
```
$docker run -u `id -u $USER` -v /home/forrest/Docker/test/ref/:/ref forrestzhang/bioinfor-docker bwa index /ref/tair10.fa
```


##New add google cloud SDK
