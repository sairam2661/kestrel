"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi32>) -> (i32, tensor<3x2xi32>), sym_name = "transpose_and_add"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "tosa.transpose"(%arg1) <{perm = [1, 0]}> : (tensor<2x3xi32>) -> tensor<3x2xi32>
    "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
        %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0, %1) : (i32, tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()