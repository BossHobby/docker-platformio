FROM python:3.9-slim

RUN apt-get update && \
  apt-get install -y jq && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && pip install -U platformio
RUN pio platform install ststm32 \
  --with-package=framework-stm32cubef4 \
  --with-package=framework-stm32cubef7 \
  --with-package=toolchain-gccarmnoneeabi