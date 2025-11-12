"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (tensor<32xi32>, i32) -> (), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<32xi32>}> : () -> tensor<32xi32>
    %3 = "arith.divsi"(%1, %2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.constant"() <{value = dense<4> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.remsi"(%3, %4) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "scf.if"(%arg1) ({
      "scf.yield"() : () -> ()
    }, {
      %7 = "scf.for"(%arg1, %arg1, %arg0) ({
      ^bb0(%arg2: i32, %arg3: tensor<32xi32>):
        %8 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflow_mode}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        %9 = "arith.cmpi"(%arg2, %arg1) : (i32, i32) -> i1
        "scf.if"(%9) ({
          "scf.yield"(%8, %arg2) : (tensor<32xi32>, i32) -> ()
        }, {
          "scf.yield"(%arg3, %arg2) : (tensor<32xi32>, i32) -> ()
        }) : (i1) -> ()
      }) : (i32, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, i32)
      "scf.yield"() : () -> ()
    }) : (i32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()