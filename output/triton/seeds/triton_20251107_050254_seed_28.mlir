"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_reduce"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<16> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
    %1 = "arith.constant"() <{value = dense<32> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
    %3 = "tt.reduce"(%2) <{combine = #tt_add_i32, type = tensor<128x128xi32>}> ({
      ^bb1(%arg0: i32, %arg1: i32):
        %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<128x128xi32>) -> i32
    %5 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, tensor<128x128xi32>) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()