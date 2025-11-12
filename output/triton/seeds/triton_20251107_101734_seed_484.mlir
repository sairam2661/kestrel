"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "arith.constant"() <{value = dense<128> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_max"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "sge") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %1 = "arith.select"(%0, %arg0, %arg1) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_square"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith_overflow_mode_none}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_main"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tt.call"(%arg0, %arg1) <{callee = @matrix_add}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "tt.call"(%0, %arg0) <{callee = @matrix_max}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %2 = "tt.call"(%1) <{callee = @matrix_square}> : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%2) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()