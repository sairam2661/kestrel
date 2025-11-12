"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_operation_mixed"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
    %2 = "scf.if"(%1) ({
      ^bb1(%arg2: tensor<2x2xi32>):
        %3 = "arith.addi"(%arg2, %arg0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
        "scf.yield"(%3) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    }, {
      ^bb2(%arg3: tensor<2x2xi32>):
        %4 = "arith.subi"(%arg0, %arg3) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
        "scf.yield"(%4) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    }) : tensor<2x2xi1> -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()