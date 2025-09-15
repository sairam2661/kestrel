"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "for"}> ({
    %0 = "arith.constant"() <{value = dense<0> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
    %2 = "arith.constant"() <{value = dense<4> : tensor<128x32xi32>}> : () -> tensor<128x32xi32>
    %3 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %6:3 = "scf.for"(%4, %3, %5, %0, %1, %2) ({
    ^bb0(%arg0: i32, %arg1: tensor<128x32xi32>, %arg2: tensor<128x32xi32>, %arg3: tensor<128x32xi32>):
      %7 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%arg2, %arg1, %arg3) : (tensor<128x32xi32>, tensor<128x32xi32>, tensor<128x32xi32>) -> ()
    }) : (i32, i32, i32, tensor<128x32xi32>, tensor<128x32xi32>, tensor<128x32xi32>) -> (tensor<128x32xi32>, tensor<128x32xi32>, tensor<128x32xi32>)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

