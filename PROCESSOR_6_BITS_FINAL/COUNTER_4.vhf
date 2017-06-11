--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : COUNTER_4.vhf
-- /___/   /\     Timestamp : 12/08/2016 21:59:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Nilanka Manoj/Documents/FINAL LAB RESOUSES/New folder (3)/PROCESSOR_6_BITS_FINAL/COUNTER_4.vhf" -w "C:/Users/Nilanka Manoj/Documents/FINAL LAB RESOUSES/New folder (3)/PROCESSOR_6_BITS_FINAL/COUNTER_4.sch"
--Design Name: COUNTER_4
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity REG_4_MUSER_COUNTER_4 is
   port ( CLK : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          EN  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end REG_4_MUSER_COUNTER_4;

architecture BEHAVIORAL of REG_4_MUSER_COUNTER_4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   component FDC
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_2 : FDC
      port map (C=>XLXN_1,
                CLR=>CLR,
                D=>D0,
                Q=>Q0);
   
   XLXI_3 : FDC
      port map (C=>XLXN_1,
                CLR=>CLR,
                D=>D1,
                Q=>Q1);
   
   XLXI_4 : FDC
      port map (C=>XLXN_1,
                CLR=>CLR,
                D=>D2,
                Q=>Q2);
   
   XLXI_5 : FDC
      port map (C=>XLXN_1,
                CLR=>CLR,
                D=>D3,
                Q=>Q3);
   
   XLXI_6 : AND2
      port map (I0=>EN,
                I1=>CLK,
                O=>XLXN_1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COUNTER_4 is
   port ( CLK : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (3 downto 0); 
          EN  : in    std_logic; 
          Q   : out   std_logic_vector (3 downto 0));
end COUNTER_4;

architecture BEHAVIORAL of COUNTER_4 is
   component REG_4_MUSER_COUNTER_4
      port ( CLK : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             EN  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
begin
   XLXI_1 : REG_4_MUSER_COUNTER_4
      port map (CLK=>CLK,
                CLR=>CLR,
                D0=>D(0),
                D1=>D(1),
                D2=>D(2),
                D3=>D(3),
                EN=>EN,
                Q0=>Q(0),
                Q1=>Q(1),
                Q2=>Q(2),
                Q3=>Q(3));
   
end BEHAVIORAL;


