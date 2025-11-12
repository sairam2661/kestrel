"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %2 = "arith.cmpi"(%1, %arg0, "slt") : (tensor<2x3xi32>, tensor<2x3xi32>, i32) -> i1
    "scf.if"(%2) ({
    ^bb1(%arg1: i1):
      %3 = "arith.addi"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
      "scf.for"() <{lower_bound = 0 : i32, upper_bound = 3 : i32, step = 1 : i32}> ({
      ^bb2(%iv: i32):
        %4 = "arith.addi"(%3, %iv) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()