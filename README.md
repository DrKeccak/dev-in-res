# Dev-In-Res

1. [Submit your EOA account address](https://forms.gle/65884NothioGu7Cd7).
2. Increase your score by yourself! (You can check your score [here](https://goerli.etherscan.io/address/0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C#readContract))

## Deployed contracts

- DevInRes.sol: https://goerli.etherscan.io/address/0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C#code
- Quest1: https://goerli.etherscan.io/address/0x9C4109Df959B55c2C0b601676575e739eec7445F#code
- Quest2: https://goerli.etherscan.io/address/0xD8511A92C7603F3809759199a49b44dB94B37A55#code
- Quest3: https://goerli.etherscan.io/address/0x0CB02Ac773803F5D83ADBb10EE20B2000A50abBB#code

## How to score?

1. The easiest way to get your first score is going to [DevInRes contract](https://goerli.etherscan.io/address/0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C#writeContract) and executing `score()` function.
2. If you want to get more scores, go to test/index.ts and see the example test cases. Please note that DevInRes is a proxy contract, so you should set up the transaction's target address to the DevInRes contract(0x4Dcd8dd6FD4Eb20F5A1AC90e347Fc92d149B3C0C).
