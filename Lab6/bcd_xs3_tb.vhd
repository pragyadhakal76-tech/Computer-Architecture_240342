library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_XS3_TB is
end entity BCD_XS3_TB;

architecture Simulation of BCD_XS3_TB is

    signal BCD : STD_LOGIC_VECTOR(3 downto 0) := "0000";
    signal XS3 : STD_LOGIC_VECTOR(3 downto 0);

begin

    DUT : entity work.BCD_TO_XS3
        port map (
            BCD => BCD,
            XS3 => XS3
        );

    STIMULUS : process
    begin
        BCD <= "0000"; wait for 10 ns;
        BCD <= "0001"; wait for 10 ns;
        BCD <= "0010"; wait for 10 ns;
        BCD <= "0011"; wait for 10 ns;
        BCD <= "0100"; wait for 10 ns;
        BCD <= "0101"; wait for 10 ns;
        BCD <= "0110"; wait for 10 ns;
        BCD <= "0111"; wait for 10 ns;
        BCD <= "1000"; wait for 10 ns;
        BCD <= "1001"; wait for 10 ns;
        BCD <= "1010"; wait for 10 ns;

        wait;
    end process;

end architecture Simulation;