"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op_combo"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<64xi32>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.xori"(%arg1, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = dense<true> : tensor<64xi1>}> : () -> tensor<64xi1>
    %6 = "arith.select"(%5, %arg1, %2) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.remsi"(%arg0, %3) : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = dense<64> : tensor<64xi32>}> : () -> tensor<64xi32>
    %9 = "arith.muli"(%8, %6) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%9) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()