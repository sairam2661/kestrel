"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.xori"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
    %3 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %4 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.muli"(%3, %4) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.constant"() <{value = dense<16> : tensor<32xi32>}> : () -> tensor<32xi32>
    %7 = "arith.remsi"(%5, %6) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %8 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %9 = "arith.xori"(%2, %8) : (i32, i32) -> i32
    %10 = "tt.reduce"() <{operation = "addi", reduction_type = i32}> ({
      ^bb1(%i: i32, %acc: i32):
        %11 = "arith.addi"(%acc, %i) : (i32, i32) -> i32
        "scf.yield"(%11) : (i32) -> ()
    }) : (tensor<32xi32>, i32) -> i32
    %12 = "arith.addi"(%9, %10) : (i32, i32) -> i32
    "tt.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()