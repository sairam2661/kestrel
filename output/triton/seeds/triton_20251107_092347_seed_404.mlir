"builtin.module"() ({
  "tt.func"() <{function_type = (i32, !ttptr) -> (i32, !ttptr), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: i32, %arg1: !ttptr):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c10 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c20 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    
    %is_zero = "arith.cmpi"(%arg0, %c0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    "scf.if"(%is_zero, "loc(unknown:0:0)") ({
      %new_ptr = "tt.addptr"(%arg1, %c10) : (!ttptr, i32) -> !ttptr
      "scf.yield"(%arg0, %new_ptr) : (i32, !ttptr) -> ()
    }, {
      %is_ten = "arith.cmpi"(%arg0, %c10) <{predicate = 0 : i64}> : (i32, i32) -> i1
      "scf.if"(%is_ten, "loc(unknown:0:0)") ({
        %new_ptr = "tt.addptr"(%arg1, %c20) : (!ttptr, i32) -> !ttptr
        "scf.yield"(%arg0, %new_ptr) : (i32, !ttptr) -> ()
      }, {
        "scf.yield"(%arg0, %arg1) : (i32, !ttptr) -> ()
      }) : (i1) -> (i32, !ttptr)
    }) : (i1) -> (i32, !ttptr)
    "tt.return"(%arg0, %arg1) : (i32, !ttptr) -> ()
  }) : () -> ()
}) : () -> ()