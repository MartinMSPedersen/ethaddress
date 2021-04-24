FROM alpine
WORKDIR /app
RUN apk add openssl wget
RUN wget https://github.com/vkobel/ethereum-generate-wallet/archive/refs/heads/master.zip && unzip master.zip && rm master.zip
WORKDIR ethereum-generate-wallet-master/
ENTRYPOINT ["/app/ethereum-generate-wallet-master/ethereum-wallet-generator.sh"]
