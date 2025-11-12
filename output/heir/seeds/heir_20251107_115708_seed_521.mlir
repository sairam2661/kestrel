"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, tensor<3x4xi64>) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: tensor<3x4xi64>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "slt") : (i32, i32) -> i1
    %2 = "tensor.extract"(%arg2, 1) : (tensor<3x4xi64>, index) -> i64
    %3 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %4 = "secret.conceal"(%arg0) : (!secretsecret) -> !secretsecret
    %5 = "arith.select"(%1, %arg1, %3) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "helper"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()