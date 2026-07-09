library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_GATE is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end XOR_GATE;

architecture Dataflow of XOR_GATE is
begin
    Y <= A XOR B;
end Dataflow;