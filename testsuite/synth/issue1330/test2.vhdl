library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test2 is
    port(
        clk : in std_logic;
        write_data : in std_ulogic;
        rst : std_ulogic
        );
end;

architecture rtl of test2 is
begin
    test_1: process(clk)
    begin
      if rising_edge(clk) then
        if rst = '1' then
          null;
        else
          assert write_data = '0' report "bad" severity failure;
        end if;
      end if;
    end process test_1;
end architecture rtl;
