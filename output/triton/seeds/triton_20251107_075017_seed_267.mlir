"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i64, tensor<64xi32>) -> (), sym_name = "complex_op"}> ({
  ^bb0(%arg0: i64, %arg1: tensor<64xi32>):
    %0 = "scf.for"(%arg0, %arg0, %arg0) ({
    ^bb0(%arg2: i64):
      %1 = "scf.if"(%arg2) ({
        %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
        "scf.yield"(%2) : (i32) -> ()
      }, {
        %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "scf.yield"(%3) : (i32) -> ()
      }) : (i64) -> i32
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i64, i64, i64) -> ()
    %4 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %5 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()