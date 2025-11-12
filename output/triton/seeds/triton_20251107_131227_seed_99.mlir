"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.reduce"(%arg0, %arg1) <{operation = "add", reduction_op = "#tt.add"}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %2 = "tt.reduce"(%1, %arg1) <{operation = "mul", reduction_op = "#tt.mul"}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
      %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
      "tt.return"(%3) : (tensor<16x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "nested_if"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = dense<1> : tensor<16xi1>}> : () -> tensor<16xi1>
      %1:2 = "scf.if"(%0) ({
        ^bb1:
          %2 = "arith.constant"() <{value = dense<2> : tensor<16xi1>}> : () -> tensor<16xi1>
          %3:2 = "scf.if"(%2) ({
            ^bb2:
              %4 = "arith.constant"() <{value = dense<3> : tensor<16xi1>}> : () -> tensor<16xi1>
              "scf.yield"(%4) : (tensor<16xi1>) -> ()
          }, {
            ^bb3:
              %5 = "arith.constant"() <{value = dense<4> : tensor<16xi1>}> : () -> tensor<16xi1>
              "scf.yield"(%5) : (tensor<16xi1>) -> ()
          }) : (tensor<16xi1>) -> (tensor<16xi1>)
          "scf.yield"(%3#0) : (tensor<16xi1>) -> ()
      }, {
        ^bb4:
          %6 = "arith.constant"() <{value = dense<5> : tensor<16xi1>}> : () -> tensor<16xi1>
          %7:2 = "scf.if"(%6) ({
            ^bb5:
              %8 = "arith.constant"() <{value = dense<6> : tensor<16xi1>}> : () -> tensor<16xi1>
              "scf.yield"(%8) : (tensor<16xi1>) -> ()
          }, {
            ^bb6:
              %9 = "arith.constant"() <{value = dense<7> : tensor<16xi1>}> : () -> tensor<16xi1>
              "scf.yield"(%9) : (tensor<16xi1>) -> ()
          }) : (tensor<16xi1>) -> (tensor<16xi1>)
          "scf.yield"(%7#0) : (tensor<16xi1>) -> ()
      }) : (tensor<16xi1>) -> (tensor<16xi1>)
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "global_scratch_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024}> : () -> memref<1024xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()