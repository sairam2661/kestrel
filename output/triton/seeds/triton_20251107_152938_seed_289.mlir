"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, tensor<1024xi32>) -> (tensor<1024xi32>), sym_name = "divmod"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<1024xi32>):
    %0 = "arith.constant"() <{value = dense<32> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %1 = "arith.select"(%arg0, %0, %arg1) : (i32, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %2 = "arith.remsi"(%1, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "arith.cmpi"(%1, %0, "uge") : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
    %4 = "arith.muli"(%1, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %5 = "arith.subi"(%1, %4) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %6 = "arith.addi"(%5, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %7 = "arith.xori"(%1, %0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    "tt.return"(%7) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()