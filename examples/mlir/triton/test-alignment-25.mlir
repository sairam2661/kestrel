"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<i32>) -> (), sym_name = "addptr_hints"}> ({
  ^bb0(%arg3: !tt.ptr<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tt.addptr"(%arg3, %0) : (!tt.ptr<i32>, i32) -> !tt.ptr<i32>
    %2 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %3 = "tt.addptr"(%arg3, %2) : (!tt.ptr<i32>, i32) -> !tt.ptr<i32>
    %4 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %5 = "tt.addptr"(%arg3, %2) : (!tt.ptr<i32>, i32) -> !tt.ptr<i32>
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt.ptr<i32>) -> (), sym_name = "kernel_div16"}> ({
  ^bb0(%arg2: !tt.ptr<i32>):
    "tt.call"(%arg2) <{callee = @addptr_hints}> : (!tt.ptr<i32>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (!tt.ptr<i32>) -> (), sym_name = "kernel_div8"}> ({
  ^bb0(%arg1: !tt.ptr<i32>):
    "tt.call"(%arg1) <{callee = @addptr_hints}> : (!tt.ptr<i32>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{arg_attrs = [{tt.divisibility = 4 : i32}], function_type = (!tt.ptr<i32>) -> (), sym_name = "kernel_div4"}> ({
  ^bb0(%arg0: !tt.ptr<i32>):
    "tt.call"(%arg0) <{callee = @addptr_hints}> : (!tt.ptr<i32>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

