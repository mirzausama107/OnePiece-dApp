// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {VRFConsumerBaseV2Plus} from "@chainlink/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol";
import {VRFV2PlusClient} from "@chainlink/contracts/src/v0.8/vrf/dev/libraries/VRFV2PlusClient.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract OnePieceMint is VRFConsumerBaseV2Plus, ERC721, ERC721URIStorage {
	 // Contract code goes here
    string[] internal characterTokenURIs = [
		"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/bafkreigigb2xicciirtzz6kzqfxeppljurz6ueqbery7qdcg56cxqlffoe",
		"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/bafkreieqfpqr3mt7znmud26mspyvjcds3one3uxzyj6qgj3ev67tnwsg44",
		"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/bafkreid4ldfny7vyqauwttxkoge6wfg4kmhgwbjykr2rnmlay4mrh2evjy",
		"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/bafkreic3j74zea6slho7d6aglq5twehpgs6zrxgml5fsmjh53r7c4bwfda",
		"https://scarlet-live-iguana-759.mypinata.cloud/ipfs/bafkreifvhocqlted7l4puuoeyo3geseb7czua26i23cne6a3rzu7g75bpu"
    ];
    
    uint256 private s_tokenCounter; // Used to keep track of the number of NFTs being minted
    VRFCoordinatorV2Interface private i_vrfCoordinator; // Used to store VRF coordinator link
    uint64 private i_subscriptionId; // Used to store subscription ID from VRF chainlink
    bytes32 private i_keyHash; // Used to store key hash from VRF chainlink
    uint32 private i_callbackGasLimit; // Used to specify the gas limit


}
