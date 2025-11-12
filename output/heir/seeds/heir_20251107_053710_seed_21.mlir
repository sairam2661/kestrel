"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation_with_control_flow"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2) ({
      ^bb0(%iv: index):
        %4 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
        %5 = "tensor.extract"(%arg1, %iv) : (tensor<4xi32>, index) -> i32
        %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %7 = "tensor.insert"(%6, %arg2, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
        "scf.yield"(%7) : (tensor<4xi32>) -> ()
      ^bb1(%arg2: tensor<4xi32>):
        "scf.yield"(%arg2) : (tensor<4xi32>) -> ()
    }) : (index, index, index) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()