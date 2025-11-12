"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<1024xi32>):
      %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_attrs}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %3 = "arith.constant"() <{value = dense<5> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_attrs}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      %5 = "arith.constant"() <{value = dense<1> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %6 = "arith.select"(%4, %5, %0) <{operand_segment_sizes = [1, 1, 1]}> : (tensor<1024xi32>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
      "scf.for"(%arg0) <{bounds = [0, 1024]}> ({
        ^bb1(%i: i32):
          %7 = "arith.xori"(%i, %i) : (i32, i32) -> i32
          %8 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
          %9 = "arith.divsi"(%8, %7) <{overflowFlags = #arith_overflow_attrs}> : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : () -> ()
      %10 = "tt.reduce"(%6) <{operation = "add", reduction_dims = [0]}> ({
        ^bb2(%i: tensor<1024xi32>):
          "scf.yield"(%i) : (tensor<1024xi32>) -> ()
      }) : (tensor<1024xi32>) -> i32
      "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()