"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_add"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "scf.if"(%0) ({
      "func.return"(%0) : (vector<4xi32>) -> ()
    }, {
      "func.return"(%0) : (vector<4xi32>) -> ()
    }) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()