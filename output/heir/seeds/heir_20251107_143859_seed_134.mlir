"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_fuzz"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, %c0) : (tensor<4xi32>, index) -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "tensor.insert"(%2, %arg0, %c0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %5 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
      %6 = "tensor.extract"(%arg1, %iv) : (tensor<4xi32>, index) -> i32
      %7 = "arith.muli"(%5, %6) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %8 = "tensor.insert"(%7, %arg0, %iv) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
      "scf.yield"() : () -> ()
    }) : () -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %9 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %10 = "arith.cmpi"(%arg2, %arg3, "slt") : (i32, i32) -> i1
    %11 = "arith.select"(%arg2, %arg3, %9) : (i32, i32, i32) -> i32
    %12 = "arith.addf"(%11, %11) : (i32, i32) -> f32
    %13 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    "func.return"(%13) : (i32) -> ()
  }) : () -> ()
}) : () -> ()