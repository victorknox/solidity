contract B {
    function suffix(uint x) internal pure virtual returns (uint);
}

contract C is B {
    uint a = 1000 suffix;

    function suffix(uint x) internal pure override returns (uint) { return x; }
}
// ----
// DeclarationError 7920: (118-124): Identifier not found or not unique.
