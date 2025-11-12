"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr) -> !tt_ptr, sym_name = "explore_addptr"}> ({
    ^bb0(%arg0: !tt_ptr):
      %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
      %1 = "tt.addptr"(%arg0, %0) : (!tt_ptr, tensor<256xi32>) -> !tt_ptr
      %2 = "tt.make_range"() <{end = 256 : i32, start = 64 : i32}> : () -> tensor<256xi32>
      %3 = "tt.addptr"(%1, %2) : (!tt_ptr, tensor<256xi32>) -> !tt_ptr
      %4 = "tt.expand_dims"(%3) : (!tt_ptr) -> !tt_ptr
      %5 = "tt.call"(%4) <{callee = "process_tensor"}> : (!tt_ptr) -> !tt_ptr
      "tt.return"(%5) : (!tt_ptr) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (!tt_ptr) -> !tt_ptr, sym_name = "process_tensor"}> ({
    ^bb0(%arg0: !tt_ptr):
      %0 = "tt.reduce"(%arg0) <{reduce_op = "add"}> {
        "tt.reduce.body" = {
          "tt.return" = {
            "tt.return" = {}
          }
        }
      } : (!tt_ptr) -> !tt_ptr
      "tt.return"(%0) : (!tt_ptr) -> ()
  }) : () -> ()
}) : () -> ()