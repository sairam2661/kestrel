"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xi1>) -> tensor<2xf32>, sym_name = "complex_flow"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xi1>):
    %0 = "arith.addf"(%arg0, %arg0) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %1 = "scf.if"(%arg1) ({
    ^bb1(%arg2: tensor<2xi1>):
      %3 = "arith.addf"(%0, %0) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
      "scf.yield"(%3) : (tensor<2xf32>) -> ()
    }, {
    ^bb2(%arg2: tensor<2xi1>):
      %3 = "arith.addf"(%0, %0) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
      "scf.yield"(%3) : (tensor<2xf32>) -> ()
    }) : (tensor<2xf32>) -> (tensor<2xf32>)
    %2 = "arith.addf"(%1, %0) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%2) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()