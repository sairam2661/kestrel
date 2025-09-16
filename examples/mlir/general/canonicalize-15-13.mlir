"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (index, index), sym_name = "to_select2"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4:2 = "scf.if"(%arg0) ({
      "scf.yield"(%0, %1) : (index, index) -> ()
    }, {
      "scf.yield"(%2, %3) : (index, index) -> ()
    }) : (i1) -> (index, index)
    "func.return"(%4#0, %4#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

