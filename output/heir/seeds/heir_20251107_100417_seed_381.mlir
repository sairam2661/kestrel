"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>, sym_name = "xor_tensor_elements"}> ({
  ^bb0(%arg0: tensor<2x2xi1>, %arg1: tensor<2x2xi1>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.insert"(%0, %arg0, %0, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %3 = "tensor.insert"(%1, %arg0, %0, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %4 = "tensor.insert"(%0, %arg0, %1, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %5 = "tensor.insert"(%1, %arg0, %1, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %6 = "tensor.insert"(%0, %arg1, %0, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %7 = "tensor.insert"(%1, %arg1, %0, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %8 = "tensor.insert"(%0, %arg1, %1, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %9 = "tensor.insert"(%1, %arg1, %1, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %10 = "tensor.extract"(%2, %0, %0) : (tensor<2x2xi1>, index, index) -> i1
    %11 = "tensor.extract"(%3, %0, %1) : (tensor<2x2xi1>, index, index) -> i1
    %12 = "tensor.extract"(%4, %1, %0) : (tensor<2x2xi1>, index, index) -> i1
    %13 = "tensor.extract"(%5, %1, %1) : (tensor<2x2xi1>, index, index) -> i1
    %14 = "tensor.extract"(%6, %0, %0) : (tensor<2x2xi1>, index, index) -> i1
    %15 = "tensor.extract"(%7, %0, %1) : (tensor<2x2xi1>, index, index) -> i1
    %16 = "tensor.extract"(%8, %1, %0) : (tensor<2x2xi1>, index, index) -> i1
    %17 = "tensor.extract"(%9, %1, %1) : (tensor<2x2xi1>, index, index) -> i1
    %18 = "arith.xori"(%10, %14) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
    %19 = "arith.xori"(%11, %15) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
    %20 = "arith.xori"(%12, %16) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
    %21 = "arith.xori"(%13, %17) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
    %22 = "tensor.insert"(%18, %arg0, %0, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %23 = "tensor.insert"(%19, %arg0, %0, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %24 = "tensor.insert"(%20, %arg0, %1, %0) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    %25 = "tensor.insert"(%21, %arg0, %1, %1) : (index, tensor<2x2xi1>, index, index) -> tensor<2x2xi1>
    "func.return"(%25) : (tensor<2x2xi1>) -> ()
  }) : () -> ()
}) : () -> ()