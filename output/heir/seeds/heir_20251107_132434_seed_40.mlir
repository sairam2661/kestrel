"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, 1) : (tensor<2xi32>, index) -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, 0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %6 = "tensor.extract"(%arg1, 0) : (tensor<2xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, 1) : (tensor<2xi32>, index) -> i32
    %8 = "arith.muli"(%6, %7) : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %10 = "arith.muli"(%8, %9) : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %5, 1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%11) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()