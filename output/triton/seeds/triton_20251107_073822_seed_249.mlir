"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "complex_kernel"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<7> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "arith.remsi"(%arg0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.addi"(%arg1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.constant"() <{value = true}> : () -> i1
      %5 = "arith.select"(%4, %3, %arg0) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "scf.for"(%0) <{upper_bound = 8 : i32}> ({
        ^bb1(%i: index):
          %7 = "tt.make_range"() <{end = 2 : i32, start = 0 : i32}> : () -> tensor<2xi32>
          %8 = "arith.constant"() <{value = dense<3> : tensor<2xi32>}> : () -> tensor<2xi32>
          %9 = "arith.muli"(%7, %8) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
          %10 = "arith.addi"(%9, %i) : (tensor<2xi32>, index) -> tensor<2xi32>
          "scf.yield"() : () -> ()
      }) : () -> ()
      %11 = "tt.reduce"(%5) <{reduction_op = "arith.addi"}> ({
        ^bb2(%acc: tensor<16xi32>, %val: tensor<16xi32>):
          %12 = "arith.addi"(%acc, %val) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%12) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%11) : (tensor<16xi32>) -> ()
  }) : () -> (tensor<16xi32>)
}) : () -> ()