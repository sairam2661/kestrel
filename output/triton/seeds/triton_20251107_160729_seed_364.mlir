"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x64xi32>, tensor<64x32xi32>) -> tensor<128x32xi32>, sym_name = "complex_reduce_and_add"}> ({
  ^bb0(%arg0: tensor<128x64xi32>, %arg1: tensor<64x32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<128x1xi32>}> : () -> tensor<128x1xi32>
    %1 = "tt.reduce"(%arg0) <{axis = 1 : i32}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      "tt.reduce.return"(%4) : (i32) -> ()
    }) : (tensor<128x64xi32>) -> tensor<128xi32>
    %2 = "tt.reduce"(%arg1) <{axis = 0 : i32}> ({
    ^bb2(%arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg4, %arg5) : (i32, i32) -> i32
      "tt.reduce.return"(%6) : (i32) -> ()
    }) : (tensor<64x32xi32>) -> tensor<32xi32>
    %3 = "tt.addptr"(%arg0, %0) : (tensor<128x64xi32>, tensor<128x1xi32>) -> tensor<128x64xi32>
    %7 = "arith.addi"(%1, %2) : (tensor<128xi32>, tensor<32xi32>) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()