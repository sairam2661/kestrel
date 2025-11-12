"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x4xi32>) -> tensor<2x4xi32>, sym_name = "matmul_with_constants"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x4xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<2x3xi32>, tensor<3x4xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<2x4xi32>
    %3 = "arith.cmpf"(%2, %0, "gt") : (tensor<2x4xi32>, tensor<1xi32>) -> tensor<2x4xi1>
    %4 = "tosa.select"(%3, %2, %0) : (tensor<2x4xi1>, tensor<2x4xi32>, tensor<1xi32>) -> tensor<2x4xi32>
    "func.return"(%4) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (index, index) -> index, sym_name = "add_with_nested_scf", sym_visibility = "private"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "scf.for"(%arg0, %arg1, 1) ({
    ^bb1(%i: index):
      %1 = "scf.for"(%i, %arg1, 1) ({
      ^bb2(%j: index):
        "scf.yield"(%j) : (index) -> ()
      }) : (index, index, index) -> ()
      "scf.yield"(%i) : (index) -> ()
    }) : (index, index, index) -> ()
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = () -> (), sym_name = "call_private_func"}> ({
  ^bb0:
    %0 = "llvm.mlir.constant"() <{value = 4 : index}> : () -> index
    %1 = "llvm.mlir.constant"() <{value = 8 : index}> : () -> index
    %2 = "func.call"(%0, %1) <{callee = @add_with_nested_scf}> : (index, index) -> index
    "llvm.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()