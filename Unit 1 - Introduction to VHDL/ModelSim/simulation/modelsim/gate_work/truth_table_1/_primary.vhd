library verilog;
use verilog.vl_types.all;
entity truth_table_1 is
    port(
        d               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic
    );
end truth_table_1;
