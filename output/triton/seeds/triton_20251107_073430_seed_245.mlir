"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i1) -> tensor<32xi32>, sym_name = "complex_select_and_reduce"}> ({
    ^bb0(%arg0: i32, %arg1: i1):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %3 = "scf.for"(%0, %arg0, %1) ({
        ^bb0(%arg2: i32):
          %4 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
          %5 = "arith.select"(%arg1, %4, %arg2) : (i1, i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> ()
      }) {tt.num_stages = 3 : i32} : (i32, i32, i32) -> tensor<32xi32>
      %6 = "tt.reduce"(%3, 0) ({
        ^bb0(%arg3: i32, %arg4: i32):
          %7 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
          "scf.yield"(%7) : (i32) -> ()
      }) : (tensor<32xi32>) -> i32
      %8 = "arith.constant"() <{value = dense<32> : tensor<32xi32>}> : () -> tensor<32xi32>
      %9 = "arith.muli"(%6, %8) <{overflowFlags = #arith_overflow}> : (i32, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%9) : (tensor<32xi32>) -> ()
  }) : () -> tensor<32xi32>
}) : () -> ()