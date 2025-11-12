"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.xori"(%1, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.constant"() <{value = dense<16> : tensor<32xi32>}> : () -> tensor<32xi32>
    %4 = "arith.remsi"(%2, %3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.cmpi"(%arg0, %4) <{predicate = 1 : i64}> : (i32, tensor<32xi32>) -> i1
    %6 = "arith.select"(%5, %4, %0) : (i1, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()