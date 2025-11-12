"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<3xi16>) -> i32, sym_name = "unusual_spirv_combination"}> ({
  ^bb0(%arg0: i32, %arg1: vector<3xi16>):
    %0 = "arith.mul"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.add"(%0, %1) : (i32, i32) -> i32
    %3 = "vector.shuffle"(%arg1, %arg1, %1) <{mask = [0, 1, 2]}> : (vector<3xi16>, vector<3xi16>, i32) -> vector<3xi16>
    %4 = "spirv.ReturnValue"(%2) : (i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()