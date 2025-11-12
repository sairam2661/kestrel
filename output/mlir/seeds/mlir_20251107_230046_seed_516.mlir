"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_transform"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%i: index):
      "scf.if"(%i) <{result = true}> ({
        ^bb2:
          "arith.addi"(%arg0, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" 	= "scf.yield" : () -> ()
      }
      : () -> ()
    }) : () -> ()
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()