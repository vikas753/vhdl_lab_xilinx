library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
    port (
        a  : in  std_logic_vector( 1 downto 0);
        b  : in  std_logic_vector( 1 downto 0);
        y : out std_logic_vector( 1 downto 0)
        );
end;

architecture behavioral of or_gate is
begin
    y <= a or b;
end;