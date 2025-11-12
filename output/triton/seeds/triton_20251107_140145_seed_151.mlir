"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>) -> (i32, tensor<16xi32>), sym_name = "complex_op_sequence"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %4 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %5 = "tt.broadcast"(%4) : (tensor<16x1xi32>) -> tensor<16x16xi32>
    %6 = "arith.constant"() <{value = dense<5> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %7 = "arith.addi"(%5, %6) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %8 = "tt.reduce"(%7) <{operation = "add"}> : (tensor<16x16xi32>) -> tensor<16xi32>
    %9 = "arith.subi"(%2, %0) : (i32, i32) -> i32
    "scf.if"(%9) ({
      ^bb0(%arg0: i32):
        %10 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
        "scf.yield"(%10) : (i32) -> ()
    }) {
      "scf.yield"=(i32)
     -> (i32)
    } : (i32) -> (i32)
    "tt.return"(%2, %8) : (i32, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()