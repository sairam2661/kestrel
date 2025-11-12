"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> !tt_ptr, sym_name = "complex_op_chain", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.divsi"(%0, %arg1) : (i32, i32) -> i32
    %2 = "arith.remsi"(%0, %arg1) : (i32, i32) -> i32
    %3 = "arith.cmpi"(%1, %arg0, "slt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %0, %1) : (i1, i32, i32) -> i32
    %5 = "tt.expand_dims"(%4) <{axis = 0 : i64}> : (i32) -> tensor<1xi32>
    %6 = "tt.reduce"(%5) <{identity = 0 : i32, operation = "add"}> : (tensor<1xi32>) -> i32
    "tt.return"(%6) : (i32) -> !tt_ptr
  }) : () -> ()
  "tt.func"() <{function_type = () -> (i32, i32), sym_name = "helper_function", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    "tt.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (i32), sym_name = "main_function", sym_visibility = "public"}> ({
    %0 = "tt.call"() <{callee = @helper_function}> : () -> (i32, i32)
    %1 = "ttg.call"() <{callee = @complex_op_chain}> : (i32, i32) -> !tt_ptr
    %2 = "ttg.call"() <{callee = @complex_op_chain}> : (i32, i32) -> !tt_ptr
    "tt.return"(%1) : (!tt_ptr) -> (i32)
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32, "ttg.target" = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()