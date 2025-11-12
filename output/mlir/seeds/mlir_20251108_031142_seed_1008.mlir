"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, i32) -> (tensor<3xi8>, i32), sym_name = "tensor_mutation"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 10 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "scf.for"(%arg1, %1, %3, %arg0) ({
    ^bb0(%arg2: i32, %arg3: tensor<3xi8>):
      %5 = "arith.addi"(%arg2, %0) : (i32, i32) -> i32
      %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %7 = "arith.addi"(%arg2, %6) : (i32, i32) -> i32
      %8 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %9 = "arith.addi"(%arg2, %8) : (i32, i32) -> i32
      %10 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %11 = "scf.if"(%arg2) ({
      ^bb0(%arg4: tensor<3xi8>):
        %12 = "arith.addi"(%arg2, %10) : (i32, i32) -> i32
        "scf.yield"(%arg4) : (tensor<3xi8>) -> ()
      }, {
      ^bb1(%arg5: tensor<3xi8>):
        "scf.yield"(%arg5) : (tensor<3xi8>) -> ()
      }) : (i32) -> tensor<3xi8>
      "scf.yield"(%arg3, %11) : (tensor<3xi8>, i32) -> ()
    }) : (i32, tensor<3xi8>, i32, tensor<3xi8>) -> (tensor<3xi8>, i32)
    "func.return"(%4, %2) : (tensor<3xi8>, i32) -> ()
  }) : () -> ()
}) : () -> ()