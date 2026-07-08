library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BCD_TO_XS3 is
    Port (
        BCD : in  STD_LOGIC_VECTOR(3 downto 0);
        XS3 : out STD_LOGIC_VECTOR(3 downto 0)
    );
end BCD_TO_XS3;

architecture Behavioral of BCD_TO_XS3 is
begin

    process(BCD)
    begin
        if unsigned(BCD) <= 9 then
            XS3 <= std_logic_vector(unsigned(BCD) + 3);
        else
            XS3 <= "0000";  -- Invalid BCD
        end if;
    end process;

end Behavioral;