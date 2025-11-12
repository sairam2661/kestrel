"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_nested_control_flow"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.if"(%0) ({
      ^bb1:
        %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.if"(%1) ({
        ^bb2:
          %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
          "scf.for"() ({
          ^bb3(%iv: index):
            %3 = "arith.addi"(%iv, %2) <{overflowFlags = #arith_overflow_none}> : (index, i32) -> i32
            "scf.yield"() : () -> ()
          }) : (index) -> () iter_args 	.index 0 : index
          "scf.yield"() : () -> ()
        }) : () -> () else 	.bb4: 	() -> ()
        "scf.yield"() : () -> ()
      }) : () -> () else 	.bb5: 	() -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()