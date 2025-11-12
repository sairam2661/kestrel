"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) ({
      ^bb1(%x0: tensor<16xi32>, %x1: tensor<16xi32>):
        %1 = "arith.addi"(%x0, %x1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%1) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "tt.reduce"(%0, %arg2) ({
      ^bb2(%y0: tensor<16xi32>, %y1: tensor<16xi32>):
        %3 = "arith.subi"(%y0, %y1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%3) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%2) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (), sym_name = "process_tensors"}> ({
  ^bb2(%arg3: tensor<16xi32>, %arg4: tensor<16xi32>):
    %5 = "tt.expand_dims"(%arg3, 1) : (tensor<16xi32>, index) -> tensor<16x1xi32>
    %6 = "tt.expand_dims"(%arg4, 1) : (tensor<16xi32>, index) -> tensor<16x1xi32>
    %7 = "tt.addptr"(%5, %6) : (tensor<16x1xi32>, tensor<16x1xi32>) -> tensor<16x1xi32>
    "tt.return"() : () -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "main"}> ({
  ^bb3:
    %8 = "tt.global_scratch_alloc"() <{size = 256}> : () -> memref<256xi32>
    %9 = "arith.constant"() <{value = dense<42> : tensor<16xi32>}> : () -> tensor<16xi32>
    %10 = "arith.constant"() <{value = dense<24> : tensor<16xi32>}> : () -> tensor<16xi32>
    %11 = "arith.constant"() <{value = dense<15> : tensor<16xi32>}> : () -> tensor<16xi32>
    "tt.call"(%9, %10, %11) <{callee = @complex_reduce}> : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.call"(%9, %10) <{callee = @process_tensors}> : (tensor<16xi32>, tensor<16xi32>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()