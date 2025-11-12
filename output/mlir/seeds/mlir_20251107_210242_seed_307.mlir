"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x2xi32>) -> (i32, tensor<2x2xi32>), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "tosa.const"() <{values = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
    %3 = "tosa.const"() <{values = dense<[[5, 6], [7, 8]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "arith.addi"(%2, %2) : (i32, i32) -> i32
    %5 = "scf.for"(%arg1, %arg1, %arg1) <{lower_bound = 0 : i32, upper_bound = 1 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32, %val: tensor<2x2xi32>):
        %6 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
        %7 = "arith.addi"(%6, %6) : (i32, i32) -> i32
        %8 = "arith.addi"(%7, %7) : (i32, i32) -> i32
        %9 = "arith.addi"(%8, %8) : (i32, i32) -> i32
        "scf.yield"(%val, %val) : (tensor<2x2xi32>, tensor<2x2xi32>) -> (tensor<2x2xi32>, tensor<2x2xi32>)
    }) : (tensor<2x2xi32>, tensor<2x2xi32>) -> (tensor<2x2xi32>, tensor<2x2xi32>)
    "func.return"(%4, %5#0) : (i32, tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()