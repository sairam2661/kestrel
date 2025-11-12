"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "xor_reduce"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "tt.reduce"(%0) <{axis = 0 : i32}> ({
    ^bb1(%arg2: tensor<4xi32>, %arg3: tensor<4xi32>):
      %4 = "arith.xori"(%arg2, %arg3) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "tt.reduce.return"(%4) : (tensor<4xi32>) -> ()
    }) : (tensor<4x4xi32>) -> tensor<4xi32>
    "tt.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "xor_and_reduce"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "scf.for"() <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%arg2: i32):
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.addi"(%arg2, %2) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> ()
    %2 = "tt.reduce"(%0) <{axis = 1 : i32}> ({
    ^bb1(%arg2: tensor<4xi32>, %arg3: tensor<4xi32>):
      %4 = "arith.xori"(%arg2, %arg3) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "tt.reduce.return"(%4) : (tensor<4xi32>) -> ()
    }) : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%2) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()