"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "tensor.empty"() <{shape = [4, 4], elementType = i32}> : () -> tensor<4x4xi32>
    %6 = "scf.for"(%0, %1) ({
    ^bb1(%iv: index):
      %7 = "scf.for"(%0, %1) ({
      ^bb2(%jv: index):
        %8 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %9 = "scf.for"(%0, %1) ({
        ^bb3(%kv: index):
          %10 = "tensor.extract"(%arg0, %iv, %kv) : (tensor<4x4xi32>, index, index) -> i32
          %11 = "tensor.extract"(%arg1, %kv, %jv) : (tensor<4x4xi32>, index, index) -> i32
          %12 = "arith.muli"(%10, %11) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
          %13 = "tensor.extract"(%5, %iv, %jv) : (tensor<4x4xi32>, index, index) -> i32
          %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
          "tensor.insert"(%14, %5, %iv, %jv) : (i32, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
          "scf.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()