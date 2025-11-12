"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "tosa.const"() <{values = dense<42> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %4 = "arith.constant"() <{value = 0 : index}> : () -> index
        %5 = "arith.addi"(%iv, %4) : (index, index) -> index
        "scf.yield"(%5) : (index) -> ()
      }) : (index)
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()