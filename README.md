# 🧱 Base Mini NFT  

My first on-chain NFT project deployed on **Base Mainnet**.  
This contract mints NFTs directly on Base and stores metadata on IPFS.  

---

## 📜 Contract Details  
- **Network:** Base Mainnet (Chain ID 8453)  
- **Contract Address:** [0x1d0fc9c9de1dd4ad9c07a90cb28ea3ef4df1f635](https://basescan.org/address/0x1d0fc9c9de1dd4ad9c07a90cb28ea3ef4df1f635)  
- **Deployer Wallet:** [0xefb5bd3fd9942932147464c1db543391bfbb4a17](https://basescan.org/address/0xefb5bd3fd9942932147464c1db543391bfbb4a17)  
- **Token Standard:** ERC-721 (NFT)  
- **Language:** Solidity 0.8.20  
- **License:** MIT  

---

## 🚀 Functions  

### `mint(string tokenURI)`  
Mints a new NFT to your wallet.  

**Example:**  
mint("https://ipfs.io/ipfs/QmYourImageMetadataLink")

yaml
Copy code

---

## 🧰 Verify on BaseScan  
1. Open your contract’s **Contract** tab on [BaseScan](https://basescan.org).  
2. Click **Verify & Publish**.  
3. Compiler: 0.8.20  |  License: MIT  |  Type: Single File Solidity.  
4. Paste your Solidity code and submit.  

---

## 🖼️ Metadata Example  
Use IPFS (nft.storage / Pinata) or a public URL.  

```json
{
  "name": "Base Builder #1",
  "description": "My first on-chain NFT deployed on Base network",
  "image": "https://i.imgur.com/xyz123.png"
}
🛠 Contract Source (example)
solidity
Copy code
// SPDX-License-Identifier: MIT  
pragma solidity ^0.8.20;  

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";  

contract BaseBuilderNFT is ERC721URIStorage {  
    uint256 public nextId = 1;  

    constructor() ERC721("Base Builder NFT", "BBNFT") {}  

    function mint(string memory tokenURI) external {  
        _safeMint(msg.sender, nextId);  
        _setTokenURI(nextId, tokenURI);  
        nextId++;  
    }  
}
📄 Repo Topics (add on GitHub)
base builder erc721 solidity nft onchain ethereum l2

💬 Credits
Built by Michael Sassine
Deployed and verified on Base 🔵
Part of #BuildOnBase #BaseBuilders #OnchainSummer
