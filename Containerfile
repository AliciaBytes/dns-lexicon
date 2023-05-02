FROM python:3-slim

LABEL org.opencontainers.image.source="https://github.com/AliciaBytes/dns-lexicon"
LABEL org.opencontainers.image.description="This is a docker container for [Lexicon](https://github.com/AnalogJ/lexicon) for ease of using the cli."
LABEL org.opencontainers.image.licenses="MIT"

RUN pip install --no-cache-dir dns-lexicon[full]

CMD [ "lexicon", "-h" ]
