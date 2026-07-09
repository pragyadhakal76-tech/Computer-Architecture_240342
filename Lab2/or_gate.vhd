library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_GATE is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end OR_GATE;

architecture Dataflow of OR_GATE is
begin
    Y <= A OR B;
end Dataflow;