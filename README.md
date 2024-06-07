# Dev-In-Res

1. [Submit your EOA account address](https://forms.gle/65884NothioGu7Cd7).
2. Increase your score by yourself! (You can check your score [here](https://sepolia.etherscan.io/address/0x192B50D5297Bc0a255eaa745BCff15f4E3581Fae#readContract))

## Deployed contracts

- DevInRes.sol: https://sepolia.etherscan.io/address/0x192B50D5297Bc0a255eaa745BCff15f4E3581Fae#code
- Quest1: https://sepolia.etherscan.io/address/0x0de9aD7BD94277b1c376C41eA5366CA682004773#code
- Quest2: https://sepolia.etherscan.io/address/0xa96D76Fbfc0A5018Bb6e948aB475C3dAf1610175#code
- Quest3: https://sepolia.etherscan.io/address/0x9A0C10B85B74e2cdafF3A062b08b9137b6ce223d#code

## How to score?

1. The easiest way to get your first score is going to [DevInRes contract](https://goerli.etherscan.io/address/0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C#writeContract) and executing `score()` function.
2. If you want to get more scores, go to test/index.ts and see the example test cases. Please note that DevInRes is a proxy contract, so you should set up the transaction's target address to the DevInRes contract(0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C).
