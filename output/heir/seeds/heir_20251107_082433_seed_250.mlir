"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, !secretsecret) -> tensor<8xi32>, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "secret.conceal"(%0) : (i32) -> !secretsecret
    %2 = "scf.for"(%arg0, %0, %0, %0) ({
    ^bb0(%arg2: tensor<8xi32>, %arg3: i32, %arg4: i32, %arg5: tensor<8xi32>):
      %6 = "tensor.extract"(%arg2, %arg3) : (tensor<8xi32>, i32) -> i32
      %7 = "arith.cmpi"(%6, %arg4, "eq") : (i32, i32) -> i1
      %8 = "scf.if"(%7) ({
      ^bb0:
        %9 = "arith.addi"(%6, %arg4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
        "scf.yield"(%9) : (i32) -> ()
      }) {
        results = (i32)
      -> (i32)
    } : (i1) -> (i32)
      %10 = "tensor.insert"(%8, %arg5) <{pos = [0, 0]}> : (i32, tensor<8xi32>) -> tensor<8xi32>
      "scf.yield"(%10) : (tensor<8xi32>) -> ()
    }) {lower = 0 : i64, upper = 8 : i64} : (tensor<8xi32>, i32, i32, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()