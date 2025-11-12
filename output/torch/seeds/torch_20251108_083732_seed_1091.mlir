"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal, sym_name = "fuzz_example"}> ({
    ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_vtensor_literal):
      %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
      %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
      %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
      %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
      %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
      %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
      %c8 = "arith.constant"() <{value = 8 : index}> : () -> index
      %c9 = "arith.constant"() <{value = 9 : index}> : () -> index
      %c10 = "arith.constant"() <{value = 10 : index}> : () -> index
      %c11 = "arith.constant"() <{value = 11 : index}> : () -> index
      %c12 = "arith.constant"() <{value = 12 : index}> : () -> index
      %c13 = "arith.constant"() <{value = 13 : index}> : () -> index
      %c14 = "arith.constant"() <{value = 14 : index}> : () -> index
      %c15 = "arith.constant"() <{value = 15 : index}> : () -> index
      %c16 = "arith.constant"() <{value = 16 : index}> : () -> index
      %c17 = "arith.constant"() <{value = 17 : index}> : () -> index
      %c18 = "arith.constant"() <{value = 18 : index}> : () -> index
      %c19 = "arith.constant"() <{value = 19 : index}> : () -> index
      %c20 = "arith.constant"() <{value = 20 : index}> : () -> index
      %cmp0 = "arith.cmpi"(%arg0, %arg1, "ne") : (!torch_vtensor_literal, !torch_vtensor_literal) -> i1
      %select0 = "arith.select"(%cmp0, %arg0, %arg1) : (i1, !torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
      "func.return"(%select0) : (!torch_vtensor_literal) -> ()
  }) : () -> ()
}) : () -> ()