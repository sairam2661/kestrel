"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x2xi32>):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "tosa.const"() <{values = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.for" (%i0) <{lowerBound = 0 : i32, upperBound = 2 : i32, step = 1 : i32}> ({
        ^bb1(%i0: i32):
          "scf.for" (%i1) <{lowerBound = 0 : i32, upperBound = 2 : i32, step = 1 : i32}> ({
            ^bb2(%i1: i32):
              %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
              "scf.for" (%i2) <{lowerBound = 0 : i32, upperBound = 3 : i32, step = 1 : i32}> ({
                ^bb3(%i2: i32):
                  %4 = "tosa.extract_element"(%arg0, %i0, %i2) : (tensor<2x3xi32>, i32, i32) -> i32
                  %5 = "tosa.extract_element"(%arg1, %i2, %i1) : (tensor<3x2xi32>, i32, i32) -> i32
                  %6 = "arith.muli"(%4, %5) : (i32, i32) -> i32
                  %7 = "tosa.extract_element"(%1, %i0, %i1) : (tensor<2x2xi32>, i32, i32) -> i32
                  %8 = "arith.addi"(%7, %6) : (i32, i32) -> i32
                  "tosa.insert_element"(%1, %8, %i0, %i1) : (tensor<2x2xi32>, i32, i32, i32) -> tensor<2x2xi32>
                  "scf.yield"() : () -> ()
              }) : () -> ()
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()