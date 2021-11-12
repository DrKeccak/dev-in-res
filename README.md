# Dev-In-Res

1. [Submit your EOA account address](https://forms.gle/65884NothioGu7Cd7).
2. Increase your score by yourself! (You can check your score [here](https://rinkeby.etherscan.io/address/0xe0B6b22b343CC64329ee70CD957bD5927BA264aD#readContract))

## Deployed contracts

- DevInRes.sol: https://rinkeby.etherscan.io/address/0xe0B6b22b343CC64329ee70CD957bD5927BA264aD#code
- Quest1: https://rinkeby.etherscan.io/address/0x8335bA3BE4DA5B3441786Fbe873ed58722bD384E#code
- Quest2: https://rinkeby.etherscan.io/address/0xDa76C1fdE1810037e4A4Dc8909DfA4e34A292A40#code
- Quest3: https://rinkeby.etherscan.io/address/0x2FE8dbB0f2505aFc5578066C24365a844D4Fb3B8#code

## How to score?

1. The easiest way to get your first score is going to [DevInRes contract](https://rinkeby.etherscan.io/address/0xe0B6b22b343CC64329ee70CD957bD5927BA264aD#writeContract) and executing `score()` function.
2. If you want to get more scores, go to test/index.ts and see the example test cases. Please note that DevInRes is a proxy contract, so you should set up the transaction's target address to the DevInRes contract(0xe0B6b22b343CC64329ee70CD957bD5927BA264aD).
