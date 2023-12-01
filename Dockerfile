FROM nginx AS build

RUN yum update && yum install -y python3 python3-pip

//ENV GO111MODULE=off

COPY . .

CMD ["python3", "calculator.py"]

############################################
# HERE STARTS THE MAGIC OF MULTI STAGE BUILD
############################################

