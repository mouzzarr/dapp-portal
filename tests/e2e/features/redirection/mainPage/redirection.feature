@redirections @regression @mainPage @authorized @smoke

Feature: External Redirection on the Main Page

  Background:
    Given Connect Metamask extension with login action

  @id1410
  Scenario Outline: Check redirection for the "View on Explorer" links (zkSync Era∎)
    Given I am on the Main page
    When I select the "<Network Name>" network
    When I click by "testId" with "account-dropdown" value
    When I click by text " View on explorer "
    Then Modal card element with the "//*[text()='View on explorer']" xpath should be "visible"
    When I click by the "<Modal card network>" text element on the Modal card
    Then New page has "<url>" address


    Examples:
      | Network Name       | Modal card network                | url                                                                                  |
      | zkSync Era Mainnet | //*[text()='zkSync Era∎ Mainnet'] | https://explorer.zksync.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046        |
      | zkSync Era Mainnet | //*[text()='Ethereum Mainnet']    | https://etherscan.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046              |
      | zkSync Era Testnet | //*[text()='zkSync Era∎ Goerli']  | https://goerli.explorer.zksync.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046 |
      | zkSync Era Testnet | //*[text()='Ethereum Goerli']     | https://goerli.etherscan.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046       |

  @id1582
  Scenario Outline: Check redirection for the "View on Explorer" links (zkSync Lite∎)
    Given I am on the Main page
    When I select the "<Network Name>" network
    When I click by "testId" with "account-dropdown" value
    When I click by text " View on explorer "
    Then Modal card element with the "//*[text()='View on explorer']" xpath should be "visible"
    When I click by the "<Modal card network>" text element on the Modal card
    Then New page has "<url>" address


    Examples:
      | Network Name        | Modal card network                | url                                                                                   |
      | zkSync Lite Mainnet | //*[text()='zkSync Lite Mainnet'] | https://zkscan.io/explorer/accounts/0xa439ba06da84afc566ee710ba12541a73e3a1046        |
      | zkSync Lite Mainnet | //*[text()='Ethereum Mainnet']    | https://etherscan.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046               |
      | zkSync Lite Goerli  | //*[text()='zkSync Lite Goerli']  | https://goerli.zkscan.io/explorer/accounts/0xa439ba06da84afc566ee710ba12541a73e3a1046 |
      | zkSync Lite Goerli  | //*[text()='Ethereum Goerli']     | https://goerli.etherscan.io/address/0xa439ba06dA84AFc566Ee710Ba12541A73e3a1046        |

