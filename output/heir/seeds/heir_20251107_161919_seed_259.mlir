"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_complex_op"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.subi"(%6, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.muli"(%7, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.select"(%7, %6, %5) : (i32, i32, i32) -> i32
    %10 = "scf.for"() <{lb = 0 : index, ub = 4 : index, step = 1 : index}> ({
      ^bb1(%iv: index):
        %11 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
        %12 = "tensor.extract"(%arg1, %iv) : (tensor<4xi32>, index) -> i32
        %13 = "arith.addi"(%11, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : (index) -> ()
    %14 = "tensor.insert"(%8, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%14) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()