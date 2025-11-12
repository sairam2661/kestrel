"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16x16xi32>) -> (), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16x16xi32>):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tt.reduce"(%arg1) ({
    ^bb0(%arg2: tensor<16x16xi32>, %arg3: i32):
      %4 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
      %5 = "arith.muli"(%arg2, %4) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %6 = "arith.reduce_addi"(%arg3, %5) <{overflowFlags = #arith_overflownone}> : (i32, tensor<16x16xi32>) -> i32
      "scf.yield"(%6) : (i32) -> i32
    }) : (tensor<16x16xi32>, i32) -> i32
    %7 = "tt.expand_dims"(%1) <{sizes = [1, 16]}> : (tensor<16xi32>) -> tensor<1x16x16xi32>
    %8 = "arith.cmpi"(%2, %3, "sgt") <{}> : (i32, i32) -> i1
    %9 = "arith.select"(%8, %2, %3) <{}> : (i1, i32, i32) -> i32
    "scf.if"(%8) ({
    ^bb0:
      "tt.call"(%9) <{callee = @external_func}> : (i32) -> ()
      "scf.yield"() : () -> ()
    }, {
    ^bb1:
      "tt.return"() : () -> ()
    }) : (i1) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "external_func"}> ({
  ^bb0(%arg0: i32):
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()