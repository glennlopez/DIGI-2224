library verilog;
use verilog.vl_types.all;
entity truth_table_1_vlg_sample_tst is
    port(
        d               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end truth_table_1_vlg_sample_tst;
