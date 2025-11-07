#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/basic-21-0.mlir":86:117)
"builtin.module"() ({
  "handshake.func"() <{function_type = (none) -> (none, none)}> ({
  ^bb0(%arg38: none):
    %22:2 = "handshake.fork"(%arg38) : (none) -> (none, none)
    "handshake.return"(%22#0, %22#1) : (none, none) -> ()
  }) {argNames = ["arg0"], resNames = ["out0", "out1"], sym_name = "test_fork"} : () -> ()
  "handshake.func"() <{function_type = (i32) -> i32}> ({
  ^bb0(%arg37: i32):
    %20:2 = "handshake.fork"(%arg37) : (i32) -> (i32, i32)
    %21 = "arith.addi"(%20#0, %20#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%21) : (i32) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "test_fork_data"} : () -> ()
  "handshake.func"() <{function_type = (i64, i64, none) -> (i64, none)}> ({
  ^bb0(%arg34: i64, %arg35: i64, %arg36: none):
    %18 = "arith.cmpi"(%arg34, %arg35) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %19 = "arith.select"(%18, %arg35, %arg34) : (i1, i64, i64) -> i64
    "handshake.return"(%19, %arg36) : (i64, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg8"], resNames = ["out0", "out1"], sym_name = "top"} : () -> ()
  "handshake.func"() <{function_type = () -> i32}> ({
    %17 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "handshake.return"(%17) : (i32) -> ()
  }) {argNames = [], resNames = ["out0"], sym_name = "constant"} : () -> ()
  "handshake.func"() <{function_type = (i1, i64, i64) -> i64}> ({
  ^bb0(%arg31: i1, %arg32: i64, %arg33: i64):
    %16 = "handshake.mux"(%arg31, %arg32, %arg33) : (i1, i64, i64) -> i64
    "handshake.return"(%16) : (i64) -> ()
  }) {argNames = ["select", "a", "b"], resNames = ["out0"], sym_name = "mux"} : () -> ()
  "handshake.func"() <{function_type = (i2, i64, i64, i64, i64) -> i64}> ({
  ^bb0(%arg26: i2, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64):
    %15 = "handshake.mux"(%arg26, %arg27, %arg28, %arg29, %arg30) : (i2, i64, i64, i64, i64) -> i64
    "handshake.return"(%15) : (i64) -> ()
  }) {argNames = ["select", "a", "b", "c", "d"], resNames = ["out0"], sym_name = "mux4"} : () -> ()
  "handshake.func"() <{function_type = (i1, index, none) -> (index, index, none)}> ({
  ^bb0(%arg23: i1, %arg24: index, %arg25: none):
    %14:2 = "handshake.cond_br"(%arg23, %arg24) : (i1, index) -> (index, index)
    "handshake.return"(%14#0, %14#1, %arg25) : (index, index, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1", "out2"], sym_name = "test_conditional_branch"} : () -> ()
  "handshake.func"() <{function_type = (i1, none) -> (none, none)}> ({
  ^bb0(%arg21: i1, %arg22: none):
    %13:2 = "handshake.cond_br"(%arg21, %arg22) : (i1, none) -> (none, none)
    "handshake.return"(%13#0, %13#1) : (none, none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_conditional_branch_none"} : () -> ()
  "handshake.func"() <{function_type = (none) -> i32}> ({
  ^bb0(%arg20: none):
    %12 = "handshake.constant"(%arg20) <{value = 42 : i32}> : (none) -> i32
    "handshake.return"(%12) : (i32) -> ()
  }) {argNames = ["arg0"], resNames = ["out0"], sym_name = "test_constant"} : () -> ()
  "handshake.func"() <{function_type = (none, none) -> (none, index)}> ({
  ^bb0(%arg18: none, %arg19: none):
    %11:2 = "handshake.control_merge"(%arg18, %arg19) : (none, none) -> (none, index)
    "handshake.return"(%11#0, %11#1) : (none, index) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_control_merge"} : () -> ()
  "handshake.func"() <{function_type = (i2, i2) -> (i2, index)}> ({
  ^bb0(%arg16: i2, %arg17: i2):
    %10:2 = "handshake.control_merge"(%arg16, %arg17) : (i2, i2) -> (i2, index)
    "handshake.return"(%10#0, %10#1) : (i2, index) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_control_merge_data"} : () -> ()
  "handshake.func"() <{function_type = (i4, i4) -> (i4, i32)}> ({
  ^bb0(%arg14: i4, %arg15: i4):
    %9:2 = "handshake.control_merge"(%arg14, %arg15) : (i4, i4) -> (i4, i32)
    "handshake.return"(%9#0, %9#1) : (i4, i32) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "test_control_fixed_index_type"} : () -> ()
  "handshake.func"() <{function_type = (i1, none) -> (none, index)}> ({
  ^bb0(%arg12: i1, %arg13: none):
    %7:2 = "handshake.control_merge"(%8#0, %8#1) : (none, none) -> (none, index)
    %8:2 = "handshake.cond_br"(%arg12, %arg13) : (i1, none) -> (none, none)
    "handshake.return"(%7#0, %7#1) : (none, index) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "branch_and_merge"} : () -> ()
  "handshake.func"() <{function_type = (i1, i1, i1) -> i1}> ({
  ^bb0(%arg9: i1, %arg10: i1, %arg11: i1):
    %6 = "handshake.merge"(%arg9, %arg10) : (i1, i1) -> i1
    "handshake.return"(%6) : (i1) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0"], sym_name = "datamerge"} : () -> ()
  "handshake.func"() <{function_type = (none, none) -> none}> ({
  ^bb0(%arg7: none, %arg8: none):
    %5 = "handshake.merge"(%arg7, %arg8) : (none, none) -> none
    "handshake.return"(%5) : (none) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0"], sym_name = "nonemerge"} : () -> ()
  "handshake.func"() <{function_type = (i32, i1) -> (i32, i1)}> ({
  ^bb0(%arg5: i32, %arg6: i1):
    %3 = "handshake.pack"(%arg5, %arg6) : (i32, i1) -> tuple<i32, i1>
    %4:2 = "handshake.unpack"(%3) : (tuple<i32, i1>) -> (i32, i1)
    "handshake.return"(%4#0, %4#1) : (i32, i1) -> ()
  }) {argNames = ["arg0", "arg1"], resNames = ["out0", "out1"], sym_name = "pack_unpack"} : () -> ()
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input rst : i1, input arg0 : !esi.channel<i32>, input arg1 : !esi.channel<i1>, output out : !esi.channel<i32>>, parameters = [], result_locs = [#loc], sym_name = "esi_outer"}> ({
  ^bb0(%arg1: !seq.clock, %arg2: i1, %arg3: !esi.channel<i32>, %arg4: !esi.channel<i1>):
    %2:2 = "handshake.esi_instance"(%arg1, %arg2, %arg3, %arg4) <{instName = "pack_unpack_inst", module = @pack_unpack}> : (!seq.clock, i1, !esi.channel<i32>, !esi.channel<i1>) -> (!esi.channel<i32>, !esi.channel<i1>)
    "hw.output"(%2#0) : (!esi.channel<i32>) -> ()
  }) : () -> ()
  "sv.verbatim"() <{format_string = "// Blah", symbols = []}> : () -> ()
  "handshake.func"() <{function_type = () -> i8}> ({
    %1 = "hw.constant"() <{value = 15 : i8}> : () -> i8
    "handshake.return"(%1) : (i8) -> ()
  }) {argNames = [], resNames = ["out0"], sym_name = "TestFunc"} : () -> ()
  "handshake.func"() <{function_type = (i64) -> i64}> ({
  ^bb0(%arg0: i64):
    %0 = "handshake.sync"(%arg0) : (i64) -> i64
    "handshake.return"(%0) : (i64) -> ()
  }) {argNames = ["in0"], resNames = ["out0"], sym_name = "TestSync"} : () -> ()
}) : () -> ()

