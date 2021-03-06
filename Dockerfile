FROM python:3

RUN mkdir -p /src
COPY setup.py /src
COPY doc/CHANGELOG.rst /src
COPY debian/ /src
COPY src/ /src/lib/

RUN pip install --upgrade pip setuptools
RUN cd /src && pip install .

RUN rm -rf /src

CMD ["exabgp", "--help"]
