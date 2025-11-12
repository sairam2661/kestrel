"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<?xi32>) -> index, sym_name = "complex_scf_if"}> ({
  ^bb0(%arg0: index, %arg1: tensor<?xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "scf.if"(%arg0) <{condition = true}> ({
      ^bb1(%arg2: index):
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        %4 = "arith.addi"(%arg2, %3) : (index, index) -> index
        "scf.yield"(%4) : (index) -> index
    }) {
      "scf.yield" = true
      } : (index) -> index
    %5 = "scf.for"(%0, %0, %1) ({
      ^bb2(%arg3: index, %arg4: index):
        %6 = "arith.addi"(%arg0, %arg3) : (index, index) -> index
        "scf.yield"(%6) : (index) -> index
    }) {
      "scf.yield" = true
    } : (index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()