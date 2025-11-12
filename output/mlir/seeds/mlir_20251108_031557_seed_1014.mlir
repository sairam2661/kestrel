"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<2x3xi32>) -> (index, tensor<2x3xi32>), sym_name = "complexControlFlow"}> ({
  ^bb0(%arg0: index, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "scf.for"(%arg0, %2, %1) ({
    ^bb0(%arg2: index):
      "scf.if"(%arg2) ({
      ^bb0:
        %4 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith_overflowMode} > : (index, index) -> index
        "scf.yield"() : () -> ()
      }) {
      } : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg3: index):
      "scf.if"(%arg3) ({
      ^bb0:
        %5 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflowMode}> : (index, index) -> index
        "scf.yield"() : () -> ()
      }) {
      } : (index) -> ()
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"(%arg0, %arg1) : (index, tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()