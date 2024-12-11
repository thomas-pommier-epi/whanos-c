FROM whanos-c AS base

EXPOSE 3002

ENTRYPOINT ["./compiled-app"]
