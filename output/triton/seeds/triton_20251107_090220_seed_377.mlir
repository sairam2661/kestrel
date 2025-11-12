"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32, tt.pointer_range = 64 : i32}], function_type = (tensor<16xi32>, !ttg_block_id) -> tensor<16xi32>, sym_name = "complex_kernel", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: !ttg_block_id):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.subi"(%1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
    %5 = "arith.cmpi"(%3, %4, "gt") : (tensor<16xi32>, tensor<16xi32>, i32) -> tensor<16xi1>
    %6 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %7 = "arith.select"(%5, %6, %3) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, !ttg_block_id) -> (tensor<16xi32>)
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()