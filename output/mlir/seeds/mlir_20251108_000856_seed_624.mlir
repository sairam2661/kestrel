"builtin.module"() ({
  "func.func"() <{function_type = (vector<2xi32>, vector<2xi32>) -> vector<2xi32>, sym_name = "vector_add_and_shift"}> ({
  ^bb0(%arg0: vector<2xi32>, %arg1: vector<2xi32>):
    %add = "arith.addvi"(%arg0, %arg1) : (vector<2xi32>, vector<2xi32>) -> vector<2xi32>
    %shift = "arith.shli"(%add, 1) : (vector<2xi32>, i32) -> vector<2xi32>
    "func.return"(%shift) : (vector<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()