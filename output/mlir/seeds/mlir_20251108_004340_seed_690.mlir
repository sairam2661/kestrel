"builtin.module"() ({
  "func.func"() <{function_type = (vector<8xi32>, vector<16xi64>) -> (vector<8xi32>, vector<16xi64>), sym_name = "vector_arithmetic"}> ({
  ^bb0(%arg0: vector<8xi32>, %arg1: vector<16xi64>):
    %0 = "arith.addi"(%arg0, %arg0) : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
    %1 = "arith.addf"(%arg1, %arg1) : (vector<16xi64>, vector<16xi64>) -> vector<16xi64>
    %2 = "arith.cmpi"(%0, %arg0, "eq") : (vector<8xi32>, vector<8xi32>) -> vector<1xi1>
    %3 = "arith.cmpf"(%1, %arg1, "oeq") : (vector<16xi64>, vector<16xi64>) -> vector<1xi1>
    "scf.if"(%2) ({
    ^bb0(%arg2: vector<1xi1>):
      %4 = "arith.addi"(%0, %arg0) : (vector<8xi32>, vector<8xi32>) -> vector<8xi32>
      "scf.yield"() : () -> ()
    }) : (vector<1xi1>) -> ()
    "scf.if"(%3) ({
    ^bb0(%arg3: vector<1xi1>):
      %5 = "arith.addf"(%1, %arg1) : (vector<16xi64>, vector<16xi64>) -> vector<16xi64>
      "scf.yield"() : () -> ()
    }) : (vector<1xi1>) -> ()
    "func.return"(%0, %1) : (vector<8xi32>, vector<16xi64>) -> ()
  }) : () -> ()
}) : () -> ()