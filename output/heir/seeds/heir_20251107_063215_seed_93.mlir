"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettype) -> (i32, vector<8xi16>), sym_name = "nested_secret_operations"}> ({
  ^bb0(%arg0: !secretsecrettype):
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%arg1: i32, %arg2: vector<8xi16>):
      %1 = "tensor_ext.rotate"(%arg2) <{offsets = [0, 1], sizes = [8, 4], strides = [1, 2]}> : (vector<8xi16>) -> vector<8xi16>
      %2 = "arith.addi"(%arg1, 10) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%2, %1) : (i32, vector<8xi16>) -> ()
    }) : (!secretsecrettype) -> (i32, vector<8xi16>)
    "func.return"(%0, %0) : (i32, vector<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()