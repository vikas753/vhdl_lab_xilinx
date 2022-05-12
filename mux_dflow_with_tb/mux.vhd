library ieee;
use ieee.std_logic_1164.all;

entity mux_2bit_2_to_1_dataflow is
    port (
        x  : in  std_logic_vector( 1 downto 0);
        y  : in  std_logic_vector( 1 downto 0);
        s  : in std_logic;
        m : out std_logic_vector( 1 downto 0)
        );
end;


architecture behavioral of mux_2bit_2_to_1_dataflow is

component and_gate
    port(a : in std_logic_vector(1 downto 0);
         b : in std_logic;
        y    : out std_logic_vector(1 downto 0)
        );
end component;

component or_gate
    port(a,b : in std_logic_vector(1 downto 0);
        y    : out std_logic_vector(1 downto 0)
        );
end component;

component not_gate
    port(a : in std_logic;
         y : out std_logic);
end component;

signal s0 : std_logic; 
signal s1 , s2 : std_logic_vector(1 downto 0);

begin
    U1 : and_gate port map(x,s,s1);
    U2 : not_gate port map(s,s0);
    U3 : and_gate port map(y,s0,s2);
    U4 : or_gate port map(s1,s2,m);
end behavioral;