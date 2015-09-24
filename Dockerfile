FROM ubuntu

MAINTAINER Tao Zhang "forrestzhang1982@gmail.com"

RUN apt-get update && apt-get install -y build-essential \
								  zlib1g-dev \
								  zlibc \
								  openjdk-7-jre \
								  git \
								  libboost-dev \
								  autoconf \
								  libncursesw5-dev \
								  libncurses5 \
								  ncurses-dev \
								  libboost-thread-dev \
								  python3-pip \
								  samtools \
								  unzip
								  
RUN mkdir /opt/software

#picard 1.139, tophat 2.1.0, cufflinks 2.2.1, bowtie2 2.2.6

ADD https://github.com/broadinstitute/picard/releases/download/1.139/picard-tools-1.139.zip /opt/software/
ADD https://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.0.Linux_x86_64.tar.gz /opt/software/
ADD http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz /opt/software/
ADD https://github.com/BenLangmead/bowtie2/releases/download/v2.2.6/bowtie2-2.2.6-linux-x86_64.zip /opt/software/

WORKDIR /opt/software
RUN unzip picard-tools-1.139.zip && mv picard-tools-1.139 picard
RUN unzip bowtie2-2.2.6-linux-x86_64.zip && mv bowtie2-2.2.6 bowtie2
RUN tar zxvf tophat-2.1.0.Linux_x86_64.tar.gz && mv tophat-2.1.0.Linux_x86_64 tophat 
RUN tar zxvf cufflinks-2.2.1.Linux_x86_64.tar.gz && mv cufflinks-2.2.1.Linux_x86_64 cufflinks

RUN git clone https://github.com/lh3/bwa.git && cd bwa && make


ENV PATH /opt/software/bowtie2:/opt/software/tophat:/opt/software/cufflinks:/opt/software/bwa:$PATH


