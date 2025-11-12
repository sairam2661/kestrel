"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
      ^bb2(%jv: index):
        %1 = "arith.muli"(%iv, %jv) : (index, index) -> index
        %2 = "arith.constant"() <{value = 2 : index}> : () -> index
        %3 = "arith.addi"(%1, %2) : (index, index) -> index
        "scf.yield"() : ()
      }) : () -> ()
      "scf.yield"() : ()
    }) : () -> ()
    "func.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()