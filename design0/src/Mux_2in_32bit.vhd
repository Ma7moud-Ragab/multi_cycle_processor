library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux2to1_32bit is
  port( 
        in_1    : in std_logic_vector(31 downto 0);
        in_2    : in std_logic_vector(31 downto 0);
        mux_sel : in std_logic;
        output     : out std_logic_vector(31 downto 0) );
end entity;

architecture bev of Mux2to1_32bit is
begin
  with mux_sel select
  output <= input_1 when '0', input_2 when others;
  
end architecture;
