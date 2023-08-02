--
-- VHDL Architecture Test_Git_local_lib.edge_detector.behave
--
-- Created:
--          by - adprda2.UNKNOWN (MD2D3GRC)
--          at - 10:17:05 01.08.2023
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY edge_detector IS
     port (
      clk      :in std_logic;
      d        :in std_logic;
      edge     :out std_logic
   );
  
END ENTITY edge_detector;

--
ARCHITECTURE behave OF edge_detector IS
   signal reg1 :std_logic;
   signal reg2 :std_logic;
BEGIN
  reg: process(clk)
begin
   if rising_edge(clk) then
      reg1  <= d;
      reg2  <= reg1;
  end if;
end process;
edge <= reg1 and (not reg2);
END ARCHITECTURE behave;

