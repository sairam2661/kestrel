"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%arg0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.addi"(%arg1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.remsi"(%2, %3) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.subi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "scf.if"(%5) ({
      %7 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
      "scf.yield"(%7) : (tensor<16xi32>) -> ()
    }, {
      %8 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
      "scf.yield"(%8) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    %9 = "tt.reduce"(%6, %4, %0) <{operation = "add"}> : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%9) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()