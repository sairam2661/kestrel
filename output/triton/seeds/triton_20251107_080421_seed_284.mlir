"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> (tensor<128xi32>), sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<128xi32>):
    %0 = "tt.expand_dims"(%arg0) <{axis = 0 : i32}> : (tensor<128xi32>) -> tensor<1x128xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 0 : i32}> : (tensor<1x128xi32>) -> tensor<1x1x128xi32>
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %5:1 = "scf.for"(%3, %4, %2) ({
    ^bb0(%arg1: i32, %arg2: tensor<1x1x128xi32>):
      %6 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.cmpi"(%6, %4) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %8 = "scf.if"(%7) ({
      ^bb0():
        "scf.yield"(%arg2) : (tensor<1x1x128xi32>) -> ()
      }) {
      }  : (i1) -> (tensor<1x1x128xi32>)
      "scf.yield"(%8) : (tensor<1x1x128xi32>) -> ()
    }) : (i32, tensor<1x1x128xi32>) -> (tensor<1x1x128xi32>)
    "tt.return"(%5) : (tensor<1x1x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()