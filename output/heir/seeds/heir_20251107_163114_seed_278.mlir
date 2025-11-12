"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    
    %select0 = "arith.select"(%arg0, %c1_i32, %c0_i32) : (tensor<4xi1>, i32, i32) -> tensor<4xi32>
    %add0 = "arith.addi"(%arg1, %select0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    
    %cmp0 = "arith.cmpi"("slt", %arg1, %c2_i32) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %select1 = "arith.select"(%cmp0, %c3_i32, %c0_i32) : (tensor<4xi1>, i32, i32) -> tensor<4xi32>
    %mulf0 = "arith.mulf"(%add0, %select1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    
    %cmp1 = "arith.cmpi"("sgt", %mulf0, %c1_i32) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %select2 = "arith.select"(%cmp1, %c2_i32, %c1_i32) : (tensor<4xi1>, i32, i32) -> tensor<4xi32>
    %sub0 = "arith.subi"(%mulf0, %select2) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    
    "func.return"(%sub0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()