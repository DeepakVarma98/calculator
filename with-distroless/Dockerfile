FROM nginx AS build

RUN yum update && yum install -y python3 python3-pip


COPY . .

CMD ["python3", "calculate.py"]

############################################
# HERE STARTS THE MAGIC OF MULTI STAGE BUILD
############################################

FROM gcr.io/distroless/python3

# Copy the compiled binary from the build stage
COPY --from=build /app /app

# Set the entrypoint for the container to run the binary
ENTRYPOINT ["/app"]
