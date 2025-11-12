"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, index) -> (tensor<2x3xi32>), sym_name = "test_tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (index, i32) -> index
    %2:2 = "scf.if"(%1) ({
      ^bb1(%arg2: index):
        %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
        %4 = "arith.addi"(%arg0, %3) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
        "scf.yield"(%4) : (tensor<2x3xi32>) -> tensor<2x3xi32>
    }) : (index) -> tensor<2x3xi32>
    "func.return"(%2#0) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()