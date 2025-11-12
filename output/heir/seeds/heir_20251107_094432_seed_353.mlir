"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tensor.empty"() <{shape = [4, 4], elementType = i32}> : () -> tensor<4x4xi32>
    %2 = "scf.for"(%0, %0, %0) <{lowerBound = #affine_map, upperBound = #affine_map, step = #affine_map}> ({
    ^bb1(%iv0: i32, %iv1: i32, %iv2: i32):
      %3 = "arith.extsi"(%iv0) : (i32) -> i64
      %4 = "arith.extsi"(%iv1) : (i32) -> i64
      %5 = "arith.extsi"(%iv2) : (i32) -> i64
      %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %7 = "scf.for"(%6, %6, %6) <{lowerBound = #affine_map, upperBound = #affine_map, step = #affine_map}> ({
      ^bb2(%jv: i32, %kv: i32):
        %8 = "tensor.extract"(%arg0, %3, %5) : (tensor<4x4xi32>, i64, i64) -> i32
        %9 = "tensor.extract"(%arg1, %5, %4) : (tensor<4x4xi32>, i64, i64) -> i32
        %10 = "arith.muli"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %11 = "tensor.extract"(%1, %3, %4) : (tensor<4x4xi32>, i64, i64) -> i32
        %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "tensor.insert"(%12, %1, %3, %4) : (i32, tensor<4x4xi32>, i64, i64) -> tensor<4x4xi32>
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32, i32, i32) -> ()
      "scf.yield"(%iv0, %iv1, %iv2) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32) -> ()
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()