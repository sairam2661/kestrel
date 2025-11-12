"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> (i32, tensor<128xi32>), sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.muli"(%arg1, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.remsi"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.select"(%1, %5, %arg0) <{predicate = "eq" : i64}> : (i32, tensor<128xi32>, i32) -> tensor<128xi32>
    %7 = "arith.xori"(%arg0, %0) : (i32, i32) -> i32
    "scf.if"(%1) ({
      %8 = "arith.addi"(%7, %1) : (i32, i32) -> i32
      "scf.yield"(%8, %5) : (i32, tensor<128xi32>) -> ()
    }, {
      %9 = "arith.muli"(%7, %1) : (i32, i32) -> i32
      "scf.yield"(%9, %arg1) : (i32, tensor<128xi32>) -> ()
    }) : (i32) -> (i32, tensor<128xi32>)
    "tt.return"(%7, %5) : (i32, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()