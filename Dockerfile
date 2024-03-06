FROM python:3.11-slim

WORKDIR /code/ganada-data-engineering
RUN apt-get update && \
    apt-get install -y gcc python3-dev

RUN pip install pip --upgrade
RUN pip install jupyter

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root"]