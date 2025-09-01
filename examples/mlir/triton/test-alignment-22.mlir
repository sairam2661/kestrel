"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<i32, 1>) -> (), sym_name = "addptr_hints"}> ({
  ^bb0(%arg0: !tt.ptr<i32, 1>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg0, %0) : (!tt.ptr<i32, 1>, i32) -> !tt.ptr<i32, 1>
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "tt.addptr"(%arg0, %2) : (!tt.ptr<i32, 1>, i32) -> !tt.ptr<i32, 1>
    %4 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %5 = "tt.addptr"(%arg0, %2) : (!tt.ptr<i32, 1>, i32) -> !tt.ptr<i32, 1>
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt.ptr<i32, 1>) -> (), sym_name = "kernel_div16"}> ({
  ^bb0(%arg0: !tt.ptr<i32, 1>):
    "tt.call"(%arg0) <{callee = @addptr_hints}> : (!tt.ptr<i32, 1>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (!tt.ptr<i32, 1>) -> (), sym_name = "kernel_div8"}> ({
  ^bb0(%arg0: !tt.ptr<i32, 1>):
    "tt.call"(%arg0) <{callee = @addptr_hints}> : (!tt.ptr<i32, 1>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 4 : i32}], function_type = (!tt.ptr<i32, 1>) -> (), sym_name = "kernel_div4"}> ({
  ^bb0(%arg0: !tt.ptr<i32, 1>):
    "tt.call"(%arg0) <{callee = @addptr_hints}> : (!tt.ptr<i32, 1>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

