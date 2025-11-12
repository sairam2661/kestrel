"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>, sym_name = "xor_tensors"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi1>):
    %0 = "tensor.extract"(%arg0) <{index = [0]}> : (tensor<4xi1>) -> i1
    %1 = "tensor.extract"(%arg1) <{index = [0]}> : (tensor<4xi1>) -> i1
    %2 = "arith.xori"(%0, %1) : (i1, i1) -> i1
    %3 = "tensor.insert"(%2, %arg0) <{index = [0]}> : (i1, tensor<4xi1>, index) -> tensor<4xi1>
    %4 = "tensor.extract"(%arg0) <{index = [1]}> : (tensor<4xi1>) -> i1
    %5 = "tensor.extract"(%arg1) <{index = [1]}> : (tensor<4xi1>) -> i1
    %6 = "arith.xori"(%4, %5) : (i1, i1) -> i1
    %7 = "tensor.insert"(%6, %3) <{index = [1]}> : (i1, tensor<4xi1>, index) -> tensor<4xi1>
    %8 = "tensor.extract"(%arg0) <{index = [2]}> : (tensor<4xi1>) -> i1
    %9 = "tensor.extract"(%arg1) <{index = [2]}> : (tensor<4xi1>) -> i1
    %10 = "arith.xori"(%8, %9) : (i1, i1) -> i1
    %11 = "tensor.insert"(%10, %7) <{index = [2]}> : (i1, tensor<4xi1>, index) -> tensor<4xi1>
    %12 = "tensor.extract"(%arg0) <{index = [3]}> : (tensor<4xi1>) -> i1
    %13 = "tensor.extract"(%arg1) <{index = [3]}> : (tensor<4xi1>) -> i1
    %14 = "arith.xori"(%12, %13) : (i1, i1) -> i1
    %15 = "tensor.insert"(%14, %11) <{index = [3]}> : (i1, tensor<4xi1>, index) -> tensor<4xi1>
    "func.return"(%15) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()