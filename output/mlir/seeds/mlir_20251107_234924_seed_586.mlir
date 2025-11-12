"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<1x2xf32>) -> (i32, tensor<1x2xf32>), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1x2xf32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
    %2 = "tosa.const"() <{value = dense<0.5> : tensor<1x2xf32>}> : () -> tensor<1x2xf32>
    %3 = "arith.cmpf"(%arg1, %2) <{predicate = "eq"}> : (tensor<1x2xf32>, tensor<1x2xf32>) -> tensor<1x2xi1>
    %4 = "scf.if"(%3) ({
      ^bb1(%arg2: tensor<1x2xi1>):
        %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "scf.yield"(%5) : (i32) -> ()
    }, {
      ^bb2(%arg3: tensor<1x2xi1>):
        %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.yield"(%6) : (i32) -> ()
    }) : (tensor<1x2xi1>) -> i32
    "func.return"(%1, %arg1) : (i32, tensor<1x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()