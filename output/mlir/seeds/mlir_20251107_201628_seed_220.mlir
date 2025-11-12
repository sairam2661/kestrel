"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<4xi8>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = 255 : i8}> : () -> i8
      %4 = "arith.cmpi"(%2, %0, "slt") : (i32, i32) -> i1
      %5 = "arith.select"(%4, %3, %arg0) : (i1, tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
      "func.return"(%5) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()