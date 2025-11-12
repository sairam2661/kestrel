"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "mixed_ops"}> ({
    %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "arith.subi"(%2, %1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "arith.muli"(%3, %1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %6 = "arith.cmpi"(%5, %0, "eq") : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
    "tt.if"(%6) ({
    ^bb0:
      "tt.return"() : () -> ()
    }){
    } : (tensor<1024xi1>) -> ()
  }) : () -> ()
}) : () -> ()