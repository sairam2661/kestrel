"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20xi32>, tensor<10x20xi32>) -> tensor<10x20xi32>, sym_name = "mixed_arith_and_scf"}> ({
    ^bb0(%arg0: tensor<10x20xi32>, %arg1: tensor<10x20xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<10x20xi32>, tensor<10x20xi32>) -> tensor<10x20xi32>
      %1 = "arith.cmpi"(%0, %arg0, "eq") : (tensor<10x20xi32>, tensor<10x20xi32>) -> tensor<10x20xi1>
      "scf.if"(%1) ({
        ^bb1(%arg2: tensor<10x20xi32>):
          %2 = "scf.for"() <{lower_bound = 0 : index, upper_bound = 10 : index, step = 1 : index}> ({
            ^bb2(%iv: index):
              %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
              %4 = "arith.addi"(%iv, %3) : (index, i32) -> index
              scf.yield %4 : index
          }) : (index)
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" = {
          "scf.yield" = {
            "scf.yield" = {
              "scf.yield" = {
                "scf.yield" = {}
              }
            }
          }
        }
      } : (tensor<10x20xi1>) -> ()
      "func.return"(%0) : (tensor<10x20xi32>) -> ()
  }) : () -> ()
}) : () -> ()