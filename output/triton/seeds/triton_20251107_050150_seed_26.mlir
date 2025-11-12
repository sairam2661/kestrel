"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_ptr, tensor<16x32xi32>) -> (), sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: !ttg_ptr, %arg1: tensor<16x32xi32>):
    %0 = "tt.reduce"(%arg1) : (tensor<16x32xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.subi"(%0, %1) : (tensor<16xi32>, i32) -> tensor<16xi32>
    %3 = "tt.expand_dims"(%2, 1) : (tensor<16xi32>, i32) -> tensor<16x1xi32>
    %4 = "tt.addptr"(%arg0, %3) : (!ttg_ptr, tensor<16x1xi32>) -> !ttg_ptr
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32} : () -> ()