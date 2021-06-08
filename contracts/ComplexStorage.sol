// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract ComplexStorage {
    uint public storeduint1 = 15;
    uint public constant constuint = 16;
    uint128 public investmentsLimit = 17055;
    uint32 public investmentsDeadlineTimeStamp = uint32(now);

    bytes16 public string1 = "rare-presale1";
    bytes32 public string2 = "epic-presale1";
    string public string3 = "lets string something";

    mapping (address => uint) uints1;
    mapping (address => DeviceData) structs1;

    uint[] public uintarray;
    DeviceData[] public deviceDataArray;
    DeviceData public singleDD;

    struct DeviceData {
        string Name;
        string deviceYear;
        string batteryWearLevel;
    }

    constructor() public {
        address address1 = 0xbCcc714d56bc0da0fd33d96d2a87b680dD6D0DF6;
        address address2 = 0xaee905FdD3ED851e48d22059575b9F4245A82B04;

        uints1[address1] = 88;
        uints1[address2] = 99;

        structs1[address1] = DeviceData("rare-presale1", "20210606", "https://e-serenity.fr/wp-content/uploads/2020/05/Logo-E-Serenity-e1590423506428.png");
        structs1[address2] = DeviceData("epic-presale1", "20210606", "https://e-serenity.fr/wp-content/uploads/2020/05/Logo-E-Serenity-e1590423506428.png");
        singleDD = DeviceData("Legendary-presale1", "20210606", "https://e-serenity.fr/wp-content/uploads/2020/05/Logo-E-Serenity-e1590423506428.png");

        uintarray.push(8000);
        uintarray.push(9000);

        deviceDataArray.push(structs1[address1]);
        deviceDataArray.push(structs1[address2]);
    }
}
