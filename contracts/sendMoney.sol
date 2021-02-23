pragma solidity ^0.5.16;

contract sendMoney {
    uint public balanceReceived;

    function receiveMoney() public payable{
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public{
        address payable to = msg.sender;

        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable _to) public{
        _to.transfer(this.getBalance());
    }

}

// Available Accounts
// ==================
// (0) 0x655fDEd4A96e5036593C3e966aD9C93D299421E9 (100 ETH)
// (1) 0x840fb44c02677FF87b11f219b8b00adcA0D9551D (100 ETH)
// (2) 0x74346f1637E08B16cc8C81E3f5d313d930E7B0BF (100 ETH)
// (3) 0x2b645a9A95E62b5d4373A953234707f69318F19D (100 ETH)
// (4) 0xa8C592DDe1A416E7cd82B99e4f966092960Cf0C0 (100 ETH)
// (5) 0x556B981eA1df92AD40Ed1ad642473fdd06297733 (100 ETH)
// (6) 0xd1D95A6dE94993487095925635c3b787C9b6ACFb (100 ETH)
// (7) 0xe136e7cb783627acA45e374B9011D8835aCfe1CC (100 ETH)
// (8) 0xE96fa6cD54Aa9C910C1fA5E584bB84Cff8104177 (100 ETH)
// (9) 0x9B0939F12bFBe967f8A5d28801f6C9d6F09E0644 (100 ETH)

// Private Keys
// ==================
// (0) 0x3d007d1a164e73cfd5d67229189af2572664886bbc8f2c89f0dd8c468fcd8a8f
// (1) 0x76fa5d3b918298359c71f85f47607c856f7129b2cd338c62b9e124aa8372db0a
// (2) 0x597de93e6a21ef4b1fff26147e8c204bf6433b5f1301d4166beb7e61cd9f9f75
// (3) 0x6e5a2e46738f91dee89fefc0e675e1acb36c51a106241096ee004b798fc48a73
// (4) 0x41dad7bc65a4c7ef565e023773933a4aa5f9649c7394575aabbf21177e494cf8
// (5) 0x8848f52f9c4f2c4f87d9d61d73bfdfc9af254fd77102473d7211f29e8ad250f2
// (6) 0x007fb2c3fb466bd3c37a51b17293e7a751f3639ba198c3f141aea8285f616e95
// (7) 0xc2c5e2cb5e186cda3d9e5b688d5d3a2c4ba1ee4419212aa20a0cee672a0ebe4c
// (8) 0x9040de37e4810904cda512daf5867f535fb0a0fa1a42291b1175a6bb5348b643
// (9) 0xd036a04aad728c63f2feb2c9a5bf48c4dd834b7b2eebe6bc6cc7a17e93538928