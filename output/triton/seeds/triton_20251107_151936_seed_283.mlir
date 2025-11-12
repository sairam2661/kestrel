"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: i32):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.addi"(%0, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tt.expand_dims"(%3) {axes = 0} : (tensor<16xi32>) -> tensor<1x16xi32>
    %5 = "arith.constant"() <{value = dense<3> : tensor<1x16xi32>}> : () -> tensor<1x16xi32>
    %6 = "arith.remsi"(%4, %5) : (tensor<1x16xi32>, tensor<1x16xi32>) -> tensor<1x16xi32>
    %7 = "tt.reduce"() <{operation = "add"}> ({
    ^bb0(%arg2: tensor<16xi32>):
      "scf.yield"(%arg2) : (tensor<16xi32>) -> ()
    }) {input_type = tensor<1x16xi32>, output_type = tensor<16xi32>} : (tensor<1x16xi32>) -> tensor<16xi32>
    %8 = "arith.select"(%arg1, %2, %6) : (i32, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %9 = "tt.make_range"() <{end = 32 : i32, start = 16 : i32}> : () -> tensor<16xi32>
    %10 = "arith.addi"(%0, %9) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %11 = "tt.global_scratch_alloc"() <{size = 64 : i32}> : () -> memref<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()