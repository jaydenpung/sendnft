async function main() {
    const NftBatchSendFactory = await ethers.getContractFactory("NftBatchSend");

    // Start deployment, returning a promise that resolves to a contract object
    const nftBatchSend = await NftBatchSendFactory.deploy("Hello World!");
    console.log("Contract deployed to address:", nftBatchSend.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });