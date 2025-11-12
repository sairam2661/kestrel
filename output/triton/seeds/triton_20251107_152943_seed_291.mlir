"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32) -> (i32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.divsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.remsi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.cmpi"(%0, %1, "slt") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %5 = "arith.select"(%4, %2, %3) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %7 = "arith.muli"(%arg0, %6) : (i32, i32) -> i32
    %8 = "arith.subi"(%7, %arg0) : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %6) : (i32, i32) -> i32
    %10 = "arith.xori"(%9, %6) : (i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : (i32) -> (i32)
}) : () -> ()