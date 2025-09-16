"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "correct_number_of_regions"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    "scf.for"(%1, %2, %1) ({
    ^bb0(%arg0: index):
      "test.two_region_op"() ({
        "work"() : () -> ()
      }, {
        "work"() : () -> ()
      }) : () -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

