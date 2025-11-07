#new_layout = #tensor_ext.new_layout<"{ [row, col] -> [ct, slot] : (slot mod 1024) - row = 0 and (ct + slot) mod 1024 - col = 0 and row >= 0 and col >= 0 and ct >= 0 and slot >= 0 }">
"builtin.module"() ({
  "func.func"() <{arg_attrs = [{foo.bar = #new_layout}], function_type = (tensor<16xi32>) -> (), sym_name = "test_fn", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

