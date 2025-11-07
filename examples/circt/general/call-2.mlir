#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/call-2.mlir":9:85)
"builtin.module"() ({
  "handshake.func"() <{function_type = (i32) -> i32}> ({
  ^bb0(%arg3: i32):
    "handshake.return"(%arg3) : (i32) -> ()
  }) {argNames = ["ctrl"], resNames = ["out0"], sym_name = "foo"} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst : i1, input ctrl : !esi.channel<i32>, output out : !esi.channel<i32>>, parameters = [], result_locs = [#loc], sym_name = "outer"}> ({
  ^bb0(%arg0: !seq.clock, %arg1: i1, %arg2: !esi.channel<i32>):
    %0 = "handshake.esi_instance"(%arg0, %arg1, %arg2) <{instName = "foo_inst", module = @foo}> : (!seq.clock, i1, !esi.channel<i32>) -> !esi.channel<i32>
    "hw.output"(%0) : (!esi.channel<i32>) -> ()
  }) : () -> ()
}) : () -> ()

