"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr, !tt_ptr, !tt_ptr) -> !tt_ptr, sym_name = "complex_reduce_and_select"}> ({
    ^bb0(%arg0: !tt_ptr, %arg1: !tt_ptr, %arg2: !tt_ptr):
      %0 = "tt.make_range"() <{dims = [64, 64], strides = [1, 64]}> : () -> !tt_ptr
      %1 = "scf.for"(%0) <{lower_bound = 0 : index, upper_bound = 64 : index, step = 1 : index, induction_variable = "iv"}> ({
      ^bb1(%iv: index):
        %2 = "arith.addi"(%arg0, %iv) : (!tt_ptr, index) -> !tt_ptr
        %3 = "arith.load"(%2) : (!tt_ptr) -> i32
        %4 = "arith.addi"(%arg1, %iv) : (!tt_ptr, index) -> !tt_ptr
        %5 = "arith.load"(%4) : (!tt_ptr) -> i32
        %6 = "arith.addi"(%3, %5) : (i32, i32) -> i32
        %7 = "arith.addi"(%arg2, %iv) : (!tt_ptr, index) -> !tt_ptr
        %8 = "arith.load"(%7) : (!tt_ptr) -> i32
        %9 = "arith.cmpi"(%6, %8) <{predicate = 2 : i64}> : (i32, i32) -> i1
        %10 = "arith.select"(%9, %6, %8) : (i1, i32, i32) -> i32
        %11 = "arith.addi"(%arg0, %iv) : (!tt_ptr, index) -> !tt_ptr
        "arith.store"(%10, %11) : (i32, !tt_ptr) -> ()
        "scf.yield"() : () -> ()
      }) : (index) -> ()
      %12 = "tt.reduce"(%arg0) <{operation = "add", identity = 0 : i32}> : (!tt_ptr) -> i32
      %13 = "arith.addi"(%12, %12) : (i32, i32) -> i32
      %14 = "arith.xori"(%13, 255) : (i32, i32) -> i32
      %15 = "tt.make_range"() <{dims = [64, 64], strides = [1, 64]}> : () -> !tt_ptr
      %16 = "scf.for"(%15) <{lower_bound = 0 : index, upper_bound = 64 : index, step = 1 : index, induction_variable = "iv"}> ({
      ^bb2(%iv: index):
        %17 = "arith.addi"(%arg0, %iv) : (!tt_ptr, index) -> !tt_ptr
        %18 = "arith.load"(%17) : (!tt_ptr) -> i32
        %19 = "arith.xori"(%18, %14) : (i32, i32) -> i32
        "arith.store"(%19, %17) : (i32, !tt_ptr) -> ()
        "scf.yield"() : () -> ()
      }) : (index) -> ()
      "tt.return"(%arg0) : (!tt_ptr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32} : () -> ()