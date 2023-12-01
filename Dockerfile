FROM nginx AS build

RUN yum update && yum install -y python3 python3-pip



COPY . .

CMD ["python3", "calculate.py"]

############################################
# HERE STARTS THE MAGIC OF MULTI STAGE BUILD
############################################

