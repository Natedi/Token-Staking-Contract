// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TTFStaking {
    IERC20 public ttfToken;
    address public owner;
    uint256 public constant FEE_PERCENTAGE = 2; // 2% fee on selling

    mapping(address => uint256) public balances;
    mapping(address => uint256) public lastUnstakedTime;

    event Staked(address indexed user, uint256 amount);
    event Unstaked(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);

    constructor(address _ttfTokenAddress) {
        ttfToken = IERC20(_ttfTokenAddress);
        owner = msg.sender;
    }

    function stake(uint256 _amount) public {
        require(ttfToken.transferFrom(msg.sender, address(this), _amount), "Transfer failed");
        balances[msg.sender] += _amount;
        emit Staked(msg.sender, _amount);
    }

    function unstake(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        require(block.timestamp >= lastUnstakedTime[msg.sender] + 72 hours, "Tokens are locked");
        balances[msg.sender] -= _amount;
        require(ttfToken.transfer(msg.sender, _amount), "Transfer failed");
        lastUnstakedTime[msg.sender] = block.timestamp;
        emit Unstaked(msg.sender, _amount);
    }

    function distributeRewards() public {
        // Reward distribution logic goes here
    }

    // Additional functions such as handling the fee, reward claims, etc., can be added here
}

