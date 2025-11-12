"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>, sym_name = "test_tensor_add"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 3 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      "scf.for"() <{lower_bound = 0 : index, upper_bound = 4 : index, step = 1 : index}> ({
      ^bb2(%jv: index):
        "arith.constant"() <{value = 2 : i32}> : () -> i32
      }) : () -> ()
    }) : () -> ()
    "func.return"(%0) : (tensor<3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()