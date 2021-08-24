FROM alpine
WORKDIR /app
RUN apk add openssl wget binutils
RUN wget https://github.com/vkobel/ethereum-generate-wallet/archive/refs/heads/master.zip && unzip master.zip && rm master.zip
RUN strip ethereum-generate-wallet-master/lib/i386/keccak-256sum ethereum-generate-wallet-master/lib/x86-64/keccak-256sum
WORKDIR ethereum-generate-wallet-master/
ENTRYPOINT ["/app/ethereum-generate-wallet-master/ethereum-wallet-generator.sh"]
