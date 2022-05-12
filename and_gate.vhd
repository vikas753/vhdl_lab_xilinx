library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port (
        a  : in  std_logic_vector( 1 downto 0);
        b  : in  std_logic;
        y : out std_logic_vector( 1 downto 0)
        );
end;

architecture behavioral of and_gate is
begin
process(a,b)
begin
    if (b='1') then 
        y <= a;
    else 
        y <= "00";
    end if;
end Process;
end behavioral;