"builtin.module"() ({
  "torch.global_slot"() <{sym_name = "public", typeBound = !torch.int}> : () -> ()
  "torch.global_slot"() <{sym_name = "set", sym_visibility = "private", typeBound = !torch.int}> : () -> ()
  "torch.global_slot.module_initializer"() ({
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    "torch.initialize.global_slots"(%1, %1) <{slotSymNames = [@public, @set]}> : (!torch.int, !torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "forward"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    "torch.global_slot.set"(%0) <{slot = @set}> : (!torch.int) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

