"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>, sym_name = "uncommon_math_operations"}> ({
  ^bb0(%arg0: tensor<64x64xi32>, %arg1: tensor<64x64xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
    %1 = "arith.muli"(%0, %arg0) : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
    %2 = "arith.divsi"(%1, %arg1) : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
    %3 = "arith.addi"(%2, %arg0) : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
    %4 = "arith.select"(%3, %arg1, %arg0) : (tensor<64x64xi1>, tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
    "tt.return"(%4) : (tensor<64x64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()