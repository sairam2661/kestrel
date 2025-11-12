"builtin.module"() ({
  "tt.func"() <{function_type = (!tttensor_type, !tttensor_type) -> !tttensor_type, sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: !tttensor_type, %arg1: !tttensor_type):
    %0 = "tt.reduce"(%arg0) <{operation = "add"}> : (!tttensor_type) -> !tttensor_type
    %1 = "tt.expand_dims"(%0) <{axis = 1}> : (!tttensor_type) -> !tttensor_type
    %2 = "tt.reduce"(%arg1) <{operation = "mul"}> : (!tttensor_type) -> !tttensor_type
    %3 = "tt.expand_dims"(%2) <{axis = 0}> : (!tttensor_type) -> !tttensor_type
    %4 = "arith.add"(%1, %3) : (!tttensor_type, !tttensor_type) -> !tttensor_type
    "tt.return"(%4) : (!tttensor_type) -> ()
  }) : () -> ()
}) : () -> ()