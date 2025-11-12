"builtin.module"() ({
  "tt.func"() <{function_type = (!tttensor_type, !tttensor_type) -> !tttensor_type, sym_name = "reduce_and_add"}> ({
    ^bb0(%arg0: !tttensor_type, %arg1: !tttensor_type):
      %0 = "tt.reduce"(%arg0) <{reduction_op = "add"}> : (!tttensor_type) -> !tttensor_type
      %1 = "tt.reduce"(%arg1) <{reduction_op = "add"}> : (!tttensor_type) -> !tttensor_type
      %2 = "tt.add"(%0, %1) : (!tttensor_type, !tttensor_type) -> !tttensor_type
      "tt.return"(%2) : (!tttensor_type) -> ()
  }) : () -> ()
}) : () -> ()