FROM perl:5.20

# for dev purposes only
RUN apt-get install bash

# install chordpro
RUN cpan install \
    App::Packager \
    File::LoadLines \
    Font::TTF \
    IO::String \
    Image::Info \
    PDF::API2 \
    String::Interpolate::Named
RUN cpan install \
    Text::Layout
RUN git clone https://github.com/ChordPro/chordpro /opt/chordpro
WORKDIR /opt/chordpro
RUN perl Makefile.PL \
 && make \
 && chmod +x /opt/chordpro/script/chordpro
WORKDIR /usr/local/lib/perl5/site_perl/5.20.3
ENV PATH /opt/chordpro/script:$PATH

ENTRYPOINT [ "chordpro" ]
