"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "nested_if_for"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%1, %0, %0) ({
    ^bb0(%arg3: i32):
      %2 = "scf.if"(%arg3) ({
        %3 = "arith.addi"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%3) : (tensor<16xi32>) -> ()
      }, {
        %4 = "arith.subi"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%4) : (tensor<16xi32>) -> ()
      }) : (i32) -> tensor<16xi32>
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "tt.return"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()