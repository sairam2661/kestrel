"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> (i32, tensor<16xi32>), sym_name = "complex_interaction", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
    %2 = "tt.make_range"() <{start = 0 : i32, end = 1024 : i32}> : () -> tensor<1024xi32>
    %3 = "tt.call"() <{function = @helper_function}> : () -> (i32, tensor<1024xi32>)
    %4 = "tt.addptr"(%arg1, %3#1) : (tensor<16xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %5 = "tt.reduce"(%4) <{operation = #tt_reduce_add}> : (tensor<1024xi32>) -> i32
    %6 = "arith.subi"(%5, %1) <{overflowFlags = #arith_overflow}>: (i32, i32) -> i32
    "tt.return"(%6, %4) : (i32, tensor<1024xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (i32, tensor<1024xi32>), sym_name = "helper_function", sym_visibility = "public"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tt.make_range"() <{start = 0 : i32, end = 1024 : i32}> : () -> tensor<1024xi32>
    "tt.return"(%0, %1) : (i32, tensor<1024xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()