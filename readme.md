# hello-foundry

https://github.com/foundry-rs/foundry

https://book.getfoundry.sh/

## Basic

- Install

```shell
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

- Init

```shell
forge init
```

- Basic commands

```shell
forge build
forge test
forge test --match-path test/HelloWorld -vvvv
```

---

- Test
- counter app
- test setup, ok, fail
- match
- verbose
- gas report

```shell
forge test --match-path test/Counter.t.sol -vvv --gas-report
```

---

- Solidity version and optimizer settings

https://github.com/foundry-rs/foundry/tree/master/config

---

- Remapping

```shell
forge remappings
forge install rari-capital/solmate
forge update lib/solmate
forge remove solmate

npm i @openzeppelin/contracts
```

---

- Formatter

```shell
forge fmt
```

---

---

- console (Counter, test, log int)

```shell
forge test --match-path test/Console.t.sol -vv
```
