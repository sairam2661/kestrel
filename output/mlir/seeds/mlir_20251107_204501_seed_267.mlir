"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_nested_if"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    "scf.if"(%0) ({
      ^bb1:
        %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.if"(%1) ({
          ^bb2:
            %2 = "arith.addi"(%1, %1) : (i32, i32) -> i32
            "func.return"(%2) : (i32) -> ()
        }) {
          "func.return"="%arg0" : () -> ()
        }
    : (i1) -> (i32)
    }) {
      "func.return"="%arg0" : () -> ()
    }
  : (i1) -> (i32)
  }) : () -> ()
}) : () -> ()