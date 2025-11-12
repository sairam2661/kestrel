"builtin.module"() ({
  "spirv.func"() <{function_type = (vector<10xi32>, vector<10xi32>) -> vector<10xi32>, sym_name = "vector_add", sym_visibility = "private"}> ({
  ^bb0(%arg0: vector<10xi32>, %arg1: vector<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<10xi32>, vector<10xi32>) -> vector<10xi32>
    %1 = "tosa.cast"(%0) : (vector<10xi32>) -> vector<10xi32>
    %2 = "arith.addi"(%1, %arg0) : (vector<10xi32>, vector<10xi32>) -> vector<10xi32>
    %3 = "spirv.ReturnValue"(%2) : (vector<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()