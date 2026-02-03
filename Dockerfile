FROM ubuntu:latest
RUN apt-get update && apt-get install -y unzip wget
RUN wget https://github.com/DawnScience/dawn-website/releases/download/v2.40.0/DawnDiamond-2.40.0.v20251006-1027-linux.x86_64.zip
RUN mkdir dawn && unzip DawnDiamond-2.40.0.v20251006-1027-linux.x86_64.zip -d ./dawn
COPY ./app_test test_data