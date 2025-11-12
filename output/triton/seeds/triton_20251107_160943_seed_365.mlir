"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "tt.reduce"(%arg0, %arg1) <{operation = "add"}> ({
        ^bb0(%arg2: tensor<128xi32>, %arg3: tensor<128xi32>):
          %1 = "arith.add"(%arg2, %arg3) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
          "scf.yield"(%1) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%0) : (tensor<128xi32>) -> ()
  }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_loops"}> ({
    ^bb0(%arg4: i32, %arg5: i32):
      %2:4 = "scf.for"(%arg4, %arg4, %arg5, %arg4) ({
        ^bb0(%arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32):
          %3:4 = "scf.for"(%arg6, %arg6, %arg7, %arg6) ({
            ^bb0(%arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32):
              %4 = "arith.addi"(%arg10, %arg11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
              %5 = "arith.select"(%arg12, %arg10, %arg13) : (i1, i32, i32) -> i32
              "scf.yield"(%4, %5) : (i32, i32) -> ()
          }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32)
          "scf.yield"(%3#0, %3#1) : (i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32)
      "tt.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "tensor_expansion"}> ({
    %6 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %7 = "tt.expand_dims"(%6, %6) <{axis = 1}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256x256xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()