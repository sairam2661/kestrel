"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "nested_loop_and_constant"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 2 : i32, step = 1 : i32}> ({
    ^bb1(%arg1: tensor<2x2xi32>, %iv: i32):
      %2 = "scf.for"(%arg1) <{lower_bound = 0 : i32, upper_bound = 2 : i32, step = 1 : i32}> ({
      ^bb2(%arg2: tensor<2x2xi32>, %iv2: i32):
        %3 = "arith.addi"(%arg2, %0) : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
        "scf.yield"(%3) : (tensor<2x2xi32>) -> ()
      }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%2) : (tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()