### Start from the official Python base image
FROM python:3.8

### Set the working directory to the root of your project inside the container
WORKDIR .

### Install appropriate dependencies
RUN apt-get -y update  && apt-get install -y \
    python3-dev \
    apt-utils \
    python-dev \   
    build-essential \   
&& rm -rf /var/lib/apt/lists/* 

### 'apt' builds up the set of packages to be installed, removed, etc.;
### 'python-dev' contains the header files you need to build Python extensions.

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -U cython
RUN pip install --no-cache-dir -U numpy
RUN pip install --no-cache-dir -U pystan

COPY requirements.txt .
RUN pip install --no-cache-dir -U -r  requirements.txt

COPY src/ .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]