# Readme

## Software include:
picard 1.139, tophat 2.1.0, cufflinks 2.2.1, bowtie2 2.2.6, bwa 0.7.12-r1044, samtools 0.1.19-96b5f2294a, sratoolkit 2.5.4-1.

##How to use
docker run -v /LOCALFASTQ:/DOCKERFASTQ /LOCALBOWTIE2REF:/ref forrestzhang/bioinfor-docker bowtie2 -x /ref/genome -q /DOCKERFASTQ/fastqfile.fq


##New add google cloud SDK
