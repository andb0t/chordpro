FROM perl:5.20

# for dev purposes only
RUN apt-get install bash

# install relevant perl libs
cpanm App::Packager

# install chordpro
RUN git clone https://github.com/ChordPro/chordpro /opt/chordpro
WORKDIR /opt/chordpro
RUN git checkout d6653bdc8ba2d3ffb369bf6e79501f8eb249571b \
 && perl Makefile.PL \
 && make \
 && chmod +x /opt/chordpro/script/chordpro
ENV PATH /opt/chordpro/script:$PATH

# WORKDIR /

CMD [ "chordpro" ]
