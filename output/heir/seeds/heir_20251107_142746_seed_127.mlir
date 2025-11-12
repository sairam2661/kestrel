"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, !secretsecret) -> tensor<4x4xi32>, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "scf.for"(%0, %2, %1) ({
      ^bb0(%iv: i32):
        %4 = "scf.for"(%0, %2, %1) ({
          ^bb1(%iv1: i32):
            %5 = "tensor.extract"(%arg0, %iv, %iv1) : (tensor<4x4xi32>, i32, i32) -> i32
            %6 = "arith.addi"(%5, %iv) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
            "scf.yield"(%6) : (i32) -> ()
        }) : (i32, i32, i32) -> tensor<4x4xi32>
        "scf.yield"(%4) : (tensor<4x4xi32>) -> ()
      }) : (i32, i32, i32) -> tensor<4x4xi32>
      "func.return"(%3) : (tensor<4x4xi32>) -> ()
    }) : () -> ()
}) : () -> ()