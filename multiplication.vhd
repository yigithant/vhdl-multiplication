library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplication is port
(
a:in std_logic_vector(1 downto 0);
b: in std_logic_vector(1 downto 0);
result: out std_logic_vector(3 downto 0)

);
end multiplication;

architecture behavior of multiplication is
signal ara1, ara2, ara3, ara4, ara5: std_logic;
begin
ara1<=a(0) and b(1);
ara2<=a(0) and b(0);
result(0)<=ara2;
ara3<=a(1) and b(0);
ara4<=a(1) and b(1);
result(1)<=ara1 xor ara3;
ara5<=ara1 and ara3;
result(2)<=ara5 xor ara4;
result(3)<=ara5 and ara4;
end behavior;
 
