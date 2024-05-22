# NFT Marketplace Training Project

This project is an educational endeavor aimed at building a decentralized marketplace for non-fungible tokens (NFTs). The marketplace allows the creation of both ERC-1155 and ERC-721 tokens. It is divided into two main components: the web application (App) and the smart contracts.

## Overview

The purpose of this project is to provide a hands-on experience in developing a decentralized marketplace for NFTs. Participants will learn about Ethereum smart contracts, including ERC-1155 and ERC-721 standards, as well as web3.js for interacting with the Ethereum blockchain.

## Components

### 1. App

The web application (App) serves as the user interface for interacting with the marketplace. It allows users to browse, create, buy, and sell NFTs. The App communicates with the Ethereum blockchain through web3.js to interact with the smart contracts.

### 2. Contracts

The contracts folder contains the Ethereum smart contracts that power the NFT marketplace. These contracts are written in Solidity and implement the ERC-1155 and ERC-721 standards for creating and managing NFTs. Additionally, there is a contract factory that manages the creation of NFTs using a contract cloning system to reduce gas fees when deploying a new collection.

## Prerequisites

- Node.js
- Hardhat (for compiling and deploying smart contracts)
- React (for building the web application)
- MetaMask or a compatible Ethereum wallet for testing and interacting with the marketplace

## Installation

1. Clone this repository:

   ```sh
   git clone https://github.com/Alexprz03/NFT-Marketplace.git
   ```

2. Navigate to the project directory:

   ```sh
   cd NFT-Marketplace
   ```

3. Install dependencies:

   ```sh
   npm install
   ```

## Usage

1. **Deploy Smart Contracts**: Use Hardhat to compile and deploy the smart contracts to a local or test Ethereum network.

2. **Start the App**: Run the React application to start the marketplace web interface.

3. **Interact with the Marketplace**: Use the web application to browse, create, buy, and sell NFTs.

## Contributions

Contributions to this project are welcome! Feel free to fork the repository, make changes, and submit pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
