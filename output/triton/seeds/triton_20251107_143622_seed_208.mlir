"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 1 : i32, tt.contiguity = 8 : i32, tt.divisibility = 4 : i32}, {tt.constancy = 1 : i32, tt.contiguity = 2 : i32, tt.divisibility = 8 : i32}], function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "reduce_and_select"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) <{kind = #ttreducekind_add}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.cmpi"(%0, %arg1, "slt") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %2 = "arith.select"(%1, %0, %arg1) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%2) : (tensor<128xi32>) -> ()
  }) : () -> tensor<128xi32>
}) : () -> ()