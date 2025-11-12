"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xf32>) -> i32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xf32>):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = [10.0, 20.0, 30.0, 40.0]}> : () -> vector<4xf32>
    %3 = "arith.addf"(%arg1, %2) : (vector<4xf32>, vector<4xf32>) -> vector<4xf32>
    %4 = "arith.cmpi"(%1, %0, "eq") : (i32, i32) -> i1
    "scf.if"(%4) ({
      ^bb1:
        "func.return"(%1) : (i32) -> ()
    }) {
      "func.return"=0 : i32
    } : (i1) -> ()
  }) : () -> ()
}) : () -> ()