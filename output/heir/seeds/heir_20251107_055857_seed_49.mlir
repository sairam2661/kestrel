"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "complex_add"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.empty"() : () -> tensor<2xi32>
    %3 = "scf.for"(%0) <{upperBound = 2 : index, step = 1 : index}> ({
    ^bb0(%i: index):
      %4 = "tensor.extract"(%arg0, %i) : (tensor<2xi32>, index) -> i32
      %5 = "tensor.extract"(%arg1, %i) : (tensor<2xi32>, index) -> i32
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_OVERFLOW_NONE}> : (i32, i32) -> i32
      %7 = "tensor.insert"(%6, %2, %i) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
      "scf.yield"(%7) : (tensor<2xi32>) -> ()
    }) : (tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%3) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()