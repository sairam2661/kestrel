"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
    %2 = "arith.cmpi"(%0, %1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %3 = "arith.xori"(%2, %2) : (tensor<4xi1>) -> tensor<4xi1>
    %4 = "arith.select"(%3, %0, %1) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.muli"(%4, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.remsi"(%5, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()