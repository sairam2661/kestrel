"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, i1) -> tensor<4xi8>, sym_name = "test_scf_conditional"}> ({
    ^bb0(%arg0: tensor<4xi8>, %arg1: i1):
      %1 = "scf.if"(%arg1) ({
        ^bb1(%arg2: tensor<4xi8>):
          %3 = "arith.constant"() <{value = 1 : index}> : () -> index
          %4 = "arith.constant"() <{value = 2 : i8}> : () -> i8
          %5 = "tensor.extract"(%arg2, %3) : (tensor<4xi8>, index) -> i8
          %6 = "arith.addi"(%5, %4) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
          %7 = "tensor.insert"(%6, %arg2, %3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
          "scf.yield"(%7) : (tensor<4xi8>) -> ()
      }, {
        ^bb2(%arg3: tensor<4xi8>):
          %8 = "arith.constant"() <{value = 2 : index}> : () -> index
          %9 = "arith.constant"() <{value = -1 : i8}> : () -> i8
          %10 = "tensor.extract"(%arg3, %8) : (tensor<4xi8>, index) -> i8
          %11 = "arith.addi"(%10, %9) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
          %12 = "tensor.insert"(%11, %arg3, %8) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
          "scf.yield"(%12) : (tensor<4xi8>) -> ()
      }) : (i1) -> tensor<4xi8>
      "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "test_tensor_operations"}> ({
    ^bb0(%arg4: tensor<4xi8>, %arg5: tensor<4xi8>):
      %13 = "arith.constant"() <{value = 0 : index}> : () -> index
      %14 = "arith.constant"() <{value = 1 : index}> : () -> index
      %15 = "tensor.extract"(%arg4, %13) : (tensor<4xi8>, index) -> i8
      %16 = "tensor.extract"(%arg5, %13) : (tensor<4xi8>, index) -> i8
      %17 = "arith.addi"(%15, %16) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      %18 = "tensor.insert"(%17, %arg5, %13) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
      %19 = "tensor.extract"(%arg4, %14) : (tensor<4xi8>, index) -> i8
      %20 = "tensor.extract"(%arg5, %14) : (tensor<4xi8>, index) -> i8
      %21 = "arith.subi"(%19, %20) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
      %22 = "tensor.insert"(%21, %18, %14) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
      "func.return"(%22) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()