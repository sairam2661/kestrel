"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, index, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "complex_indexing"}> ({
  ^bb0(%arg0: tensor<3x3xi8>, %arg1: index, %arg2: tensor<3x3xi8>):
    %0 = "arith.cmpi"(%arg1, %c1) <{predicate = "slt"}> : (index, index) -> i1
    %1 = "arith.cmpi"(%arg1, %c2) <{predicate = "slt"}> : (index, index) -> i1
    %2 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    %3 = "arith.select"(%2, %arg0, %arg2) : (i1, tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
    "func.return"(%3) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()