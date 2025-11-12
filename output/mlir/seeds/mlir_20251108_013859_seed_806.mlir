"builtin.module"() ({
  "func.func"() <{
    function_type = (tensor<3x4xi8>, tensor<4x5xi8>) -> tensor<3x5xi8>,
    sym_name = "tensor_concat"
  }> ({
    ^bb0(%arg0: tensor<3x4xi8>, %arg1: tensor<4x5xi8>):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %8 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %9 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %10 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %11 = "arith.const"() <{value = 0 : i32}> : () -> i32
      %12 = "arith.const"() <{value = 1 : i32}> : () -> i32
      %13 = "arith.const"() <{value = 0 : i32}> : () -> i32
      %14 = "arith.const"() <{value = 1 : i32}> : () -> i32
      %15 = "arith.const"() <{value = 0 : i32}> : () -> i32
      %16 = "arith.const"() <{value = 3 : i32}> : () -> i32
      %17 = "arith.const"() <{value = 0 : i32}> : () -> i32
      %18 = "arith.const"() <{value = 4 : i32}> : () -> i32
      %19 = "arith.const"() <{value = 0 : i32}> : () -> i32
      %20 = "arith.const"() <{value = 5 : i32}> : () -> i32
      %21 = "tosa.transpose"(%arg0, %15, %16) : (tensor<3x4xi8>, i32, i32) -> tensor<4x3xi8>
      %22 = "tosa.transpose"(%arg1, %19, %20) : (tensor<4x5xi8>, i32, i32) -> tensor<5x4xi8>
      %23 = "tosa.concat"(%21, %22, %0, %1) : (tensor<4x3xi8>, tensor<5x4xi8>, i32, i32) -> tensor<5x7xi8>
      "func.return"(%23) : (tensor<5x7xi8>) -> ()
  }) : () -> ()
}) : () -> ()