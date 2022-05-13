----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:22 05/11/2022 
-- Design Name: 
-- Module Name:    full_adder_df - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder_dataflow is
  port(a    : in std_logic;
       b    : in std_logic;
		 cin  : in std_logic;
		 s    : out std_logic;
		 cout : out std_logic
      );		 
end fulladder_dataflow;

architecture Behavioral of fulladder_dataflow is

begin
  cout <= (a and b);
  s    <= cin and ( '1' or (a or b or (a and b)));
end Behavioral;

