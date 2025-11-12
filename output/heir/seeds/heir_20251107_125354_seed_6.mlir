"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.cmpi"(%0, %arg1, "lt") : (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<1xi1>
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "tensor.extract"(%1, %2) : (tensor<1xi1>, index) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%5) : (tensor<4xi32>) -> ()
    }, {
      "scf.yield"(%0) : (tensor<4xi32>) -> ()
    }) : (i1) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()