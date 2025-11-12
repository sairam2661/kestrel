"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, 1) : (tensor<2xi32>, index) -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, 0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %5 = "tensor.insert"(%3, %arg1, 1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %6 = "scf.for"(%arg0) <{lower_bound = 0 : index, upper_bound = 2 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg0: tensor<2xi32>):
      %7 = "tensor.extract"(%arg0, %iv) : (tensor<2xi32>, index) -> i32
      %8 = "arith.muli"(%7, %7) : (i32, i32) -> i32
      %9 = "tensor.insert"(%8, %arg0, %iv) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "scf.yield"(%9) : (tensor<2xi32>) -> ()
    }) : (tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()