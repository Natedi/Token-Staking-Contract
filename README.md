# Token Staking Contract (TTF)

## Overview
The Token Staking Contract allows users to stake TTF tokens, a cryptocurrency with a built-in 2% fee on sales that is sent directly to the token owner's wallet. This project focuses on interacting with the Binance Smart Chain (BSC) and integrates with MetaMask for wallet management. This contract is designed for users looking to leverage staking rewards under predefined rules.

## Functionality
- **Connect to MetaMask** on the Binance Smart Chain.
- **View Wallet Address**: Users can see their current wallet address.
- **Stake Tokens**: Allows staking of any amount of TTF tokens.
- **Unstake Tokens**: Permits the withdrawal of staked tokens with a cooling period.

## Rules
- **Token Type**: Only TTF tokens can be staked.
- **Staking Amounts**: Must be whole numbers; fractional tokens cannot be staked.
- **Token Lock**: Staked tokens are locked and cannot be moved until unstaked.
- **Unstaking Period**: A 72-hour waiting period is required before unstaked tokens are released.

## Rewards
- **Distribution Schedule**: Rewards are distributed every Monday at 20:00 GMT.
- **Claim Period**: Stakers have 48 hours to claim rewards before they are burned.
- **Fee Allocation**: 50% of the sales fee collected from token transactions is distributed to stakers based on their staked amount.

## Setup Instructions
(TBD - Specific instructions on how to deploy and initialize the contract)

## Usage
(TBD - Detailed examples on how to interact with the contract using MetaMask)

## Contributing
Interested in contributing? Great! We welcome contributions from everyone. Please read our CONTRIBUTING guide to learn how you can get involved in developing and improving this staking contract.

## Acknowledgments
If you find this project useful for your applications or developments, we kindly request that you acknowledge the original repository and the primary author(s). This is not a requirement of the license under which this project is provided, but a request to foster a collaborative and respectful open-source community.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
