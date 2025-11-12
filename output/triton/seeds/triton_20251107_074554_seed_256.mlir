"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}, {tt.pointer_range = 64 : i32}], function_type = (!ttg_ptr_type) -> (), sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !ttg_ptr_type):
    %0 = "tt.expand_dims"(%arg0) <{axis = 2 : i32}> : (!ttg_ptr_type) -> !ttg_ptr_type
    %1 = "arith.constant"() <{value = dense<16> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %3 = "arith.subi"(%2, %1) : (tensor<1024xi32>, tensor<16xi32>) -> tensor<1024xi32>
    %4 = "scf.if"(%3) <{true_case = [], false_case = []}> ({
      ^bb1(%3: tensor<1024xi32>):
        %5 = "tt.reduce"(%3) <{operation = "add", reduction_type = "i32"}> : (tensor<1024xi32>) -> i32
        "tt.return"(%5) : (i32) -> ()
    }) : () -> ()
    %6 = "tt.call"(%arg0) <{callee = @fuzz_func}> : (!ttg_ptr_type) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!ttg_ptr_type) -> (), sym_name = "helper_func"}> ({
  ^bb1(%arg1: !ttg_ptr_type):
    %7 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %8 = "tt.addptr"(%arg1, %7) : (!ttg_ptr_type, i32) -> !ttg_ptr_type
    "tt.return"(%8) : (!ttg_ptr_type) -> ()
  }) : () -> ()
}) : () -> ()