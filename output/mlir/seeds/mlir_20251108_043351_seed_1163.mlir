"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x2xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tosa.const"() <{values = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    "scf.for"(%c0 : i32) ({
      ^bb1(%iv: i32):
        "scf.for"(%c0 : i32) ({
          ^bb2(%jv: i32):
            "scf.for"(%c0 : i32) ({
              ^bb3(%kv: i32):
                %2 = "tosa.load"(%arg0, %iv, %kv) : (tensor<2x3xi32>, i32, i32) -> i32
                %3 = "tosa.load"(%arg1, %kv, %jv) : (tensor<3x2xi32>, i32, i32) -> i32
                %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
                %5 = "tosa.load"(%1, %iv, %jv) : (tensor<2x2xi32>, i32, i32) -> i32
                %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
                "tosa.store"(%6, %1, %iv, %jv) : (i32, tensor<2x2xi32>, i32, i32)
                "scf.yield"() : () -> ()
            }) {lower_bound = 0 : i32, upper_bound = 3 : i32, step = 1 : i32}
            : tensor<2x2xi32>, i32, i32 -> ()
            "scf.yield"() : () -> ()
        }) {lower_bound = 0 : i32, upper_bound = 2 : i32, step = 1 : i32}
        : tensor<2x2xi32>, i32 -> ()
        "scf.yield"() : () -> ()
    }) {lower_bound = 0 : i32, upper_bound = 2 : i32, step = 1 : i32}
    : tensor<2x2xi32> -> ()
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()