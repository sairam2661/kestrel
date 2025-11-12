"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "multiply_tensors"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "tensor.empty"() : () -> tensor<2x2xi32>
      %1 = "linalg.generic"(%arg0, %arg1, %0) ({
        ^bb1(%arg2: i32, %arg3: i32):
          %4 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflowFlags} > : (i32, i32) -> i32
          "linalg.yield"(%4) : (i32) -> ()
      }) : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()