"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "nested_control_flow"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %3 = "tt.expand_dims"(%1) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %4 = "scf.if"(%arg0) ({
        ^bb1:
          %5 = "tt.reduce"(%2) <{axis = 0 : i32}> ({
            ^bb2(%arg3: i32, %arg4: i32):
              %6 = "arith.addi"(%arg3, %arg4) : (i32, i32) -> i32
              "tt.reduce.return"(%6) : (i32) -> ()
          }) : (tensor<16x1xi32>) -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) {
        "scf.yield" = #arith_fastmath_attributes
      } : (i32) -> i32
      %7 = "scf.if"(%arg0) ({
        ^bb3:
          %8 = "tt.reduce"(%3) <{axis = 0 : i32}> ({
            ^bb4(%arg5: i32, %arg6: i32):
              %9 = "arith.addi"(%arg5, %arg6) : (i32, i32) -> i32
              "tt.reduce.return"(%9) : (i32) -> ()
          }) : (tensor<16x1xi32>) -> i32
          "scf.yield"(%8) : (i32) -> i32
      }) {
        "scf.yield" = #arith_fastmath_attributes
      } : (i32) -> i32
      %10 = "tt.subi"(%7, %4) : (i32, i32) -> i32
      "tt.return"(%10) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()