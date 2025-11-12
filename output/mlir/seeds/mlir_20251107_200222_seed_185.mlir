"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<4x5xi8>) -> tensor<2x3xi8>, sym_name = "elementwiseXor"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<4x5xi8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "tosa.const"() <{value = dense<0> : tensor<4x5xi8>}> : () -> tensor<4x5xi8>
    %2 = "arith.addi"(%arg0, %0) : (tensor<2x3xi8>, i8) -> tensor<2x3xi8>
    %3 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
      %4 = "arith.index_cast"(%iv) : (index) -> i32
      %5 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %6 = "arith.addi"(%4, %5) : (i32, i32) -> i32
      %7 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %8 = "arith.addi"(%6, %7) : (i32, i32) -> i32
      %9 = "arith.index_cast"(%8) : (i32) -> index
      %10 = "memref.load"(%arg1, %9) : (tensor<4x5xi8>, index) -> i8
      "scf.yield"(%10) : (i8) -> (i8)
    }) : (i8) ->tensor<2x3xi8>
    %11 = "arith.xori"(%2, %3) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%11) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()