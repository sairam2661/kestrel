"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<bf16>, !tt.ptr<bf16>, i32) -> (), sym_name = "get_num_prog_nonneg"}> ({
  ^bb0(%arg0: !tt.ptr<bf16>, %arg1: !tt.ptr<bf16>, %arg2: i32):
    %0 = "tt.get_num_programs"() <{axis = 0 : i32}> : () -> i32
    %1 = "tt.get_num_programs"() <{axis = 1 : i32}> : () -> i32
    %2 = "tt.get_num_programs"() <{axis = 2 : i32}> : () -> i32
    %3 = "arith.minsi"(%0, %1) : (i32, i32) -> i32
    %4 = "arith.minsi"(%2, %3) : (i32, i32) -> i32
    %5 = "arith.maxsi"(%arg2, %4) : (i32, i32) -> i32
    %6 = "tt.splat"(%5) : (i32) -> tensor<8xi32>
    %7 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()

