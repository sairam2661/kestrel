"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "for_yields_4"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "scf.for"(%0, %2, %1, %3) ({
    ^bb0(%arg0: index, %arg1: i32):
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

