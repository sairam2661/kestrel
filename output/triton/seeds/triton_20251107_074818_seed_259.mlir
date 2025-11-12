"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, tensor<32x16xi32>) -> tensor<32x16xi32>, sym_name = "xor_and_select", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32x16xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32x16xi32>}> : () -> tensor<32x16xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<32x16xi32>}> : () -> tensor<32x16xi32>
    %2 = "arith.xori"(%arg1, %0) : (tensor<32x16xi32>, tensor<32x16xi32>) -> tensor<32x16xi32>
    %3 = "arith.cmpi"(%arg0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %2, %1) : (i1, tensor<32x16xi32>, tensor<32x16xi32>) -> tensor<32x16xi32>
    "tt.return"(%4) : (tensor<32x16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 8 : i32} : () -> ()