"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<3xi8>) -> (i32), sym_name = "complex_edge_case"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<3xi8>):
    %0 = "arith.constant"() {value = 42 : i32} : () -> i32
    %1 = "arith.cmpi"(%arg0, %0) {"kind" = "eq"} : (i32, i32) -> i1
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "tosa.const"() {value = dense<2> : tensor<1xi32>} : () -> tensor<1xi32>
    %4 = "arith.addf"(%arg0, %2) : (i32, i32) -> f32
    "scf.for"(%arg0, %3) <{lower_bound = 0 : index, upper_bound = 3 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %arg0: i32):
      %5 = "arith.addi"(%arg0, %iv) : (i32, index) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : (i32, tensor<3xi8>) -> (i32)
}) : () -> ()