"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x2xf32>, tensor<2x3x2xf32>) -> tensor<2x3x2xf32>, sym_name = "cross_dialect_test"}> ({
  ^bb0(%arg0: tensor<2x3x2xf32>, %arg1: tensor<2x3x2xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<2x3x2xf32>, tensor<2x3x2xf32>) -> tensor<2x3x2xf32>
    %1 = "arith.constant"() <{value = 42.000000e+00 : f32}> : () -> f32
    %2 = "arith.cmpf"(%0, %1) <{pred = "oeq"}> : (tensor<2x3x2xf32>, f32) -> tensor<2x3xi1>
    "scf.if"(%2) ({
      ^bb1(%arg2: tensor<2x3xi1>):
        %3 = "arith.addf"(%arg0, %arg1) : (tensor<2x3x2xf32>, tensor<2x3x2xf32>) -> tensor<2x3x2xf32>
        "scf.yield"() : () -> ()
    }) : (tensor<2x3xi1>) -> ()
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%4, %4, %4) ({
      ^bb2(%arg3: index):
        %5 = "arith.addi"(%arg3, %4) : (index, index) -> index
        "scf.yield"(%5) : (index) -> ()
    }) : (index, index, index) -> (index)
    "func.return"(%0) : (tensor<2x3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()