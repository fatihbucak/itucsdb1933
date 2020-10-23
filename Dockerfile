FROM python:3

ENV DATABASE_URL=postgres://lltjryrurbhacv:4ed89e50a1718d204c9ac3cee26560e3874bf47bd7ce47e12f0c4f81611954f6@ec2-107-22-236-52.compute-1.amazonaws.com:5432/d2lpnjbrjgerqm

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./server.py" ]
