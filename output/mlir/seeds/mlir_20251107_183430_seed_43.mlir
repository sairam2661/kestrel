"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>) -> (), sym_name = "test_nested_scfs"}> ({
    ^bb0(%arg0: tensor<?xi32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      "scf.for"(%0, %1, %1) ({
        ^bb1(%iv: index):
          "scf.if"(%iv) ({
            ^bb2(%cond: i1):
              "scf.yield"() : () -> ()
          }) : () -> ()
          "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()