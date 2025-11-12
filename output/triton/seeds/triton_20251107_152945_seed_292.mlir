"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32, tensor<32xi32>) -> (i32, tensor<32xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %3 = "arith.divsi"(%arg0, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.remsi"(%arg0, %4) : (i32, i32) -> i32
    %6 = "arith.select"(%5, %3, %2) : (i32, i32, i32) -> i32
    %7 = "scf.for"(%arg0) <{upper_bound = 10 : i32}> ({
    ^bb1(%iv: i32):
      %8 = "arith.addi"(%iv, %6) : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i32) -> ()
    %9 = "arith.xori"(%7, %2) : (i32, i32) -> i32
    "tt.return"(%9, %1) : (i32, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> (i32, tensor<32xi32>)