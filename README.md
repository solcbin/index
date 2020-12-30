# `solidity-index`

```cpp

#if ETH_PARANOIA
    if (isKnown(_block.info.hash()) && !details(_block.info.hash()))
    {
        LOG(m_loggerError) << "Known block just inserted has no details.";
        LOG(m_loggerError) << "Block: " << _block.info;
        LOG(m_loggerError) << "DATABASE CORRUPTION: CRITICAL FAILURE";
        exit(-1);
    }

    try
    {
        State canary(_db, BaseState::Empty);
        canary.populateFromChain(*this, _block.info.hash());
    }
    catch (...)
    {
        LOG(m_loggerError) << "Failed to initialise State object form imported block.";
        LOG(m_loggerError) << "Block: " << _block.info;
        LOG(m_loggerError) << "DATABASE CORRUPTION: CRITICAL FAILURE";
        exit(-1);
    }
#endif // ETH_PARANOIA
```

### Solidity Versions 

[releases](https://github.com/ethereum/homebrew-ethereum/commits/master/solidity.rb)

