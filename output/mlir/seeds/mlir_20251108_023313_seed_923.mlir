"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> (tensor<5x5xi32>, tensor<5x5xi32>), sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %cst0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %0:2 = "arith.addi"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    %cmp = "arith.cmpi"(%arg0, %arg1, "sgt") : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi1>
    %1:2 = "scf.if"(%cmp) ({
    ^bb1(%arg2: tensor<5x5xi32>, %arg3: tensor<5x5xi32>):
      %2 = "arith.addi"(%arg2, %arg3) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
      "scf.yield"(%2, %arg3) : (tensor<5x5xi32>, tensor<5x5xi32>) -> ()
    }, {
    ^bb2(%arg2: tensor<5x5xi32>, %arg3: tensor<5x5xi32>):
      %2 = "arith.addi"(%arg2, %arg3) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
      "scf.yield"(%arg2, %2) : (tensor<5x5xi32>, tensor<5x5xi32>) -> ()
    }) : (tensor<5x5xi1>, tensor<5x5xi32>, tensor<5x5xi32>) -> (tensor<5x5xi32>, tensor<5x5xi32>)
    "func.return"(%0#0, %1#1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()